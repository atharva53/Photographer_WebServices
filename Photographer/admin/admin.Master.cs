using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Photographer.admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                form1.Visible = true;
                //admpanel.Visible = true;
                //lilogout.Visible = true;
                //lilogin.Visible = false;
            }
            else
            {
               form1.Visible = false;
                //lilist.Visible = false;
                //lilogout.Visible = false;
                //lilogin.Visible = true;
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("login.aspx");
        }
    }
}