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
    public partial class bookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT bid, name, contact, email, event, date, time FROM eventBooking", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridViewBookings.DataSource = dt;
                        GridViewBookings.DataBind();
                    }
                }
            }
        }

        protected void AcceptBooking(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string bookingID = btn.CommandArgument;

            // Move record to work history
            string constr = ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                // Insert into work history table
                SqlCommand cmd = new SqlCommand("INSERT INTO workHistory (bid, name, contact, email, event, date, time) SELECT bid, name, contact, email, event, date, time FROM eventBooking WHERE bid = @bid", con);
                cmd.Parameters.AddWithValue("@bid", bookingID);
                con.Open();
                cmd.ExecuteNonQuery();

                // Delete from eventBooking table
                cmd = new SqlCommand("DELETE FROM eventBooking WHERE bid = @bid", con);
                cmd.Parameters.AddWithValue("@bid", bookingID);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            BindGrid();
        }

        protected void RejectBooking(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string bookingID = btn.CommandArgument;

            string constr = ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                // Move record to rejected table, excluding 'bid' (which is auto-generated in 'rejected' table)
                SqlCommand cmd = new SqlCommand("INSERT INTO rejected (name, contact, email, event, date, time) SELECT name, contact, email, event, date, time FROM eventBooking WHERE bid = @bid", con);
                cmd.Parameters.AddWithValue("@bid", bookingID);
                con.Open();
                cmd.ExecuteNonQuery();

                // Delete from eventBooking table after moving to rejected
                cmd = new SqlCommand("DELETE FROM eventBooking WHERE bid = @bid", con);
                cmd.Parameters.AddWithValue("@bid", bookingID);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            BindGrid();  // Refresh the grid after rejecting the booking
        }

    }
}