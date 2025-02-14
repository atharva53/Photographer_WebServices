using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Photographer.user
{
    public partial class contact : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into enquiries values (@name,@email,@contact,@subject)", con);
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@contact", txtContact.Text); 
            cmd.Parameters.AddWithValue("@subject", txtSubject.Text);
           

            con.Open();
            cmd.ExecuteNonQuery();
            txtName.Text = "";
            txtContact.Text = "";
            txtEmail.Text = "";
            txtSubject.Text = "";
           

            this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Thank you! for your Enquiry','','success');", true);
        }
    }
}