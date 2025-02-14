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
    public partial class upcomingWork : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindUpcomingWorkGrid();
            }
        }

        private void BindUpcomingWorkGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("SELECT bid, name, contact, email, event, date, time FROM workHistory WHERE date >= @CurrentDate", con);
                cmd.Parameters.AddWithValue("@CurrentDate", DateTime.Now);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    GridViewUpcomingWork.DataSource = dt;
                    GridViewUpcomingWork.DataBind();
                }
            }
        }

        protected void RejectBooking(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string bookingID = btn.CommandArgument;

            string constr = ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                // Move the record to the rejected table, excluding the 'bid' (auto-generated in rejected table)
                SqlCommand cmd = new SqlCommand("INSERT INTO rejected (name, contact, email, event, date, time) SELECT name, contact, email, event, date, time FROM workHistory WHERE bid = @bid", con);
                cmd.Parameters.AddWithValue("@bid", bookingID);
                con.Open();
                cmd.ExecuteNonQuery();

                // Delete from workHistory table after moving to rejected
                cmd = new SqlCommand("DELETE FROM workHistory WHERE bid = @bid", con);
                cmd.Parameters.AddWithValue("@bid", bookingID);
                cmd.ExecuteNonQuery();

                con.Close();
            }

            BindUpcomingWorkGrid();  // Refresh the grid after rejecting the booking
        }

    }
}