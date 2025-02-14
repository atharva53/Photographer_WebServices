using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Photographer.admin
{
    public partial class dashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                if (!IsPostBack)
                {
                    BindDashboardData();
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

        private void BindDashboardData()
        {
            string connStr = ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                // Total Bookings (From workHistory Table)
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM workHistory", conn))
                {
                    int totalBookings = (int)cmd.ExecuteScalar();
                    lblTotalBookings.Text = totalBookings.ToString();
                }

                // Total Team (From team Table)
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM team", conn))
                {
                    int totalTeam = (int)cmd.ExecuteScalar();
                    lblTotalTeam.Text = totalTeam.ToString();
                }

                // Total Work Done (From workHistory Table)
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM workHistory", conn))
                {
                    int totalWorkDone = (int)cmd.ExecuteScalar();
                    lblTotalWorkDone.Text = totalWorkDone.ToString();
                }

                // Rejected Events (From rejected Table)
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM rejected", conn))
                {
                    int rejectedEvents = (int)cmd.ExecuteScalar();
                    lblRejectedEvents.Text = rejectedEvents.ToString();
                }
            }
        }
    }
}