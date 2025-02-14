using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Photographer.user
{
    public partial class wildlife : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadWeddingImages();
            }
        }

        private void LoadWeddingImages()
        {
            // Get the connection string from the web.config
            string connStr = ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                // Query to get the wedding images
                string query = "SELECT phimg FROM photos WHERE phevent = 'wildlife'";
                SqlCommand cmd = new SqlCommand(query, conn);

                try
                {
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    // If images are found, bind them to the repeater
                    if (reader.HasRows)
                    {
                        rptWeddingImages.DataSource = reader;
                        rptWeddingImages.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    // Handle any errors (logging, displaying a message, etc.)
                    Console.WriteLine("Error: " + ex.Message);
                }
            }
        }
    }
}