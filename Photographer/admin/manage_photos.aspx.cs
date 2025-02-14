using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Photographer.admin
{
    public partial class manage_photos : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString;

        // Method to handle page load
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView(); // Load data on first load
            }
        }

        // Method to bind GridView with the images
        private void BindGridView()
        {
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString))
            {
                string query = "SELECT phid, phimg, phevent FROM photos";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        gvPhotos.DataSource = dt;
                        gvPhotos.DataBind();
                    }
                }
            }
        }

        // Upload button logic
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fileUploadPhoto.HasFile)
            {
                string fileName = Path.GetFileName(fileUploadPhoto.PostedFile.FileName);
                string filePath = "~/Images/" + fileName;
                string serverPath = Server.MapPath(filePath);

                // Save the uploaded file to the server
                fileUploadPhoto.SaveAs(serverPath);

                // Show the uploaded image in the preview
                imgPreview.ImageUrl = filePath;

                lblMessage.Text = "Image uploaded successfully!";
                lblMessage.CssClass = "text-success";
            }
            else
            {
                lblMessage.Text = "Please select an image to upload.";
                lblMessage.CssClass = "text-danger";
            }
        }

        // Save button logic
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(imgPreview.ImageUrl) && ddlEventType.SelectedValue != "")
            {
                string eventType = ddlEventType.SelectedValue;
                string imagePath = imgPreview.ImageUrl;

                using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString))
                {
                    string query = "INSERT INTO photos (phimg, phevent) VALUES (@phimg, @phevent)";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@phimg", imagePath);
                        cmd.Parameters.AddWithValue("@phevent", eventType);

                        con.Open();
                        int result = cmd.ExecuteNonQuery();
                        con.Close();

                        if (result > 0)
                        {
                            lblMessage.Text = "Image saved successfully!";
                            lblMessage.CssClass = "text-success";

                            // Refresh the GridView
                            BindGridView();
                        }
                        else
                        {
                            lblMessage.Text = "Error: Unable to save image.";
                            lblMessage.CssClass = "text-danger";
                        }
                    }
                }
            }
            else
            {
                lblMessage.Text = "Please upload an image first.";
                lblMessage.CssClass = "text-danger";
            }
        }

        // Delete button logic
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btnDelete = (Button)sender;
            int phid = Convert.ToInt32(btnDelete.CommandArgument);

            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString))
            {
                string query = "SELECT phimg FROM photos WHERE phid = @phid";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@phid", phid);
                    con.Open();
                    string imagePath = cmd.ExecuteScalar().ToString();
                    con.Close();

                    // Delete the record
                    query = "DELETE FROM photos WHERE phid = @phid";
                    using (SqlCommand deleteCmd = new SqlCommand(query, con))
                    {
                        deleteCmd.Parameters.AddWithValue("@phid", phid);
                        con.Open();
                        deleteCmd.ExecuteNonQuery();
                        con.Close();
                    }

                    // Delete the file from server
                    string serverPath = Server.MapPath(imagePath);
                    if (File.Exists(serverPath))
                    {
                        File.Delete(serverPath);
                    }

                    lblMessage.Text = "Image deleted successfully!";
                    lblMessage.CssClass = "text-success";

                    // Refresh the GridView
                    BindGridView();
                }
            }
        }

    }
}