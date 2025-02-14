using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Photographer.admin
{
    public partial class rejected : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRejectedGrid();  // Ensure the method exists
            }
        }

        // This method binds the rejected bookings to the GridView
        private void BindRejectedGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                // Query to fetch rejected bookings
                SqlCommand cmd = new SqlCommand("SELECT bid, name, contact, email, event, date, time FROM rejected", con);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    GridViewRejected.DataSource = dt;  // Binding the data to GridView
                    GridViewRejected.DataBind();
                }
            }
        }

        // This method handles the accept button click for rejected records
        protected void AcceptRejected(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string bookingID = btn.CommandArgument;

            string constr = ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();

                // Move the rejected record to workHistory
                SqlCommand cmd = new SqlCommand("INSERT INTO workHistory (bid, name, contact, email, event, date, time) SELECT bid, name, contact, email, event, date, time FROM rejected WHERE bid = @bid", con);
                cmd.Parameters.AddWithValue("@bid", bookingID);
                cmd.ExecuteNonQuery();

                // Delete the record from rejected table
                cmd = new SqlCommand("DELETE FROM rejected WHERE bid = @bid", con);
                cmd.Parameters.AddWithValue("@bid", bookingID);
                cmd.ExecuteNonQuery();
            }

            // Refresh the GridView to reflect changes
            BindRejectedGrid();
        }
    }
}