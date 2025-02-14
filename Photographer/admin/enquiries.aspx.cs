using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Photographer.admin
{
    public partial class enquiries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindEnquiries();
            }
        }

        private void BindEnquiries()
        {
            string connString = ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "SELECT uid, name, contact, email, subject FROM enquiries";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridViewEnquiries.DataSource = dt;
                        GridViewEnquiries.DataBind();
                    }
                }
            }
        }
    }
}