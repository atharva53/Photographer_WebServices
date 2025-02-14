using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Photographer.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "atharva" && txtPassword.Text == "2002")
            {
                Session["Admin"] = "True";
                Response.Redirect("dashboard.aspx");
            }
            else
            {
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Invalid Login..!','','error');", true);
            }
        }

        //protected void btnLogin_Click(object sender, EventArgs e)
        //{
        //    if (txtEmail.Text == "admin@gmail.com" && txtPassword.Text == "admin")
        //    {
        //        Session["Admin"] = "True";
        //        Response.Redirect("EmployeeList.aspx");
        //    }
        //    else
        //    {
        //        this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Invalid Login..!','','error');", true);
        //    }
        //}
    }
}