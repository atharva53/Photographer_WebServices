using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Photographer.admin
{
    public partial class team : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString);
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTeamMembers();
            }
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            ClearForm();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string designation = txtDesignation.Text;
            string photoPath = ViewState["UploadedImagePath"]?.ToString(); // Get uploaded image path

            if (string.IsNullOrEmpty(photoPath))
            {
                lblMessage.Text = "Please upload an image.";
                lblMessage.Visible = true;
                return;
            }

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO team (Name, Designation, photo) VALUES (@Name, @Designation, @photo)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Designation", designation);
                    cmd.Parameters.AddWithValue("@photo", photoPath);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            LoadTeamMembers();
            ClearForm();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (ViewState["SelectedId"] == null)
            {
                lblMessage.Text = "Please select a member to update.";
                lblMessage.Visible = true;
                return;
            }

            string name = txtName.Text;
            string designation = txtDesignation.Text;
            string photoPath = ViewState["UploadedImagePath"]?.ToString(); // Get uploaded image path

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "UPDATE team SET Name = @Name, Designation = @Designation, photo = @photo WHERE Id = @Id";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Id", ViewState["SelectedId"]);
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Designation", designation);
                    cmd.Parameters.AddWithValue("@photo", photoPath);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            LoadTeamMembers();
            ClearForm();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (ViewState["SelectedId"] == null)
            {
                lblMessage.Text = "Please select a member to delete.";
                lblMessage.Visible = true;
                return;
            }

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM team WHERE Id = @Id";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Id", ViewState["SelectedId"]);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            LoadTeamMembers();
            ClearForm();
        }

        protected void gvTeamMembers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gvTeamMembers.Rows[index];

                // Set the fields correctly from the GridView
                txtName.Text = row.Cells[2].Text; // Assuming Name is in the 3rd cell (index 2)
                txtDesignation.Text = row.Cells[3].Text; // Assuming Designation is in the 4th cell (index 3)

                // Access the photo URL using DataKeys
                string photoUrl = gvTeamMembers.DataKeys[index].Values["photo"].ToString();
                if (!string.IsNullOrEmpty(photoUrl))
                {
                    imgPreview.ImageUrl = photoUrl; // Set the image URL for the preview
                    imgPreview.Visible = true; // Ensure the image is visible
                    ViewState["UploadedImagePath"] = photoUrl; // Store the image path in ViewState
                }

                ViewState["SelectedId"] = gvTeamMembers.DataKeys[index].Values["Id"]; // Store selected ID
            }
        }





        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fuPhoto.HasFile)
            {
                string fileName = Path.GetFileName(fuPhoto.FileName);
                string filePath = Server.MapPath("~/images/") + fileName;
                fuPhoto.SaveAs(filePath);

                imgPreview.ImageUrl = "~/images/" + fileName; // Set the preview image URL
                imgPreview.Visible = true; // Show the image preview
                ViewState["UploadedImagePath"] = "~/images/" + fileName; // Store the uploaded image path
                lblMessage.Visible = false; // Hide any previous messages
            }
            else
            {
                lblMessage.Text = "Please select an image to upload.";
                lblMessage.Visible = true;
            }
        }

        private void LoadTeamMembers()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT Id, Name, Designation, photo FROM team";
                using (SqlDataAdapter da = new SqlDataAdapter(query, con))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    gvTeamMembers.DataSource = dt;
                    gvTeamMembers.DataBind();
                }
            }
        }

        private void ClearForm()
        {
            txtName.Text = string.Empty;
            txtDesignation.Text = string.Empty;
            imgPreview.ImageUrl = string.Empty;
            imgPreview.Visible = false; // Hide the image preview
            ViewState["UploadedImagePath"] = null; // Clear uploaded image path
            ViewState["SelectedId"] = null; // Clear selected ID
            lblMessage.Visible = false; // Hide any previous messages
        }
    }
}