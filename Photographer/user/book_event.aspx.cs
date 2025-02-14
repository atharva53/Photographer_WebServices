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
    public partial class book_event : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into eventBooking values (@name,@email,@contact,@evnt,@date,@time)", con);
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@contact", txtContact.Text);
            cmd.Parameters.AddWithValue("@evnt", eventype.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@date", evdate.Text);
            cmd.Parameters.AddWithValue("@time", evtime.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            txtName.Text = "";
            txtContact.Text = "";
            txtEmail.Text = "";
            evdate.Text = "";
            evtime.Text = "";
            eventype.SelectedIndex = 0;

            this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Booking Request Sent Successfully..!','','success');", true);

        }
    }
}