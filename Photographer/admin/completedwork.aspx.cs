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
    public partial class working_history : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDropDowns();
                BindCompletedWorkGrid();
            }
        }

        private void LoadDropDowns()
        {
            // Load Year Dropdown
            for (int i = DateTime.Now.Year; i >= 2000; i--)
            {
                ddlYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            ddlYear.Items.Insert(0, new ListItem("Select Year", ""));

            // Load Month Dropdown
            for (int i = 1; i <= 12; i++)
            {
                ddlMonth.Items.Add(new ListItem(new DateTime(1, i, 1).ToString("MMMM"), i.ToString()));
            }
            ddlMonth.Items.Insert(0, new ListItem("Select Month", ""));

            // Load Event Dropdown
            ddlEvent.Items.Add(new ListItem("All", "All"));
            ddlEvent.Items.Add(new ListItem("Wedding", "Wedding"));
            ddlEvent.Items.Add(new ListItem("Fashion Shoot", "Fashion Shoot"));
            ddlEvent.Items.Add(new ListItem("Birthday", "Birthday"));
            ddlEvent.Items.Add(new ListItem("Portrait", "Portrait"));
            ddlEvent.Items.Add(new ListItem("Cultural", "Cultural"));
            ddlEvent.Items.Add(new ListItem("Portrait", "Portrait"));
            ddlEvent.Items.Add(new ListItem("Baby", "Baby"));
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            BindCompletedWorkGrid();
        }

        private void BindCompletedWorkGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["atharvaconstr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "SELECT bid, name, contact, email, event, date, time FROM workHistory WHERE date < @CurrentDate";

                // Build the query based on filters
                if (ddlEvent.SelectedValue != "All")
                {
                    query += " AND event = @Event";
                }

                if (!string.IsNullOrEmpty(ddlYear.SelectedValue))
                {
                    query += " AND YEAR(date) = @Year";
                }

                if (!string.IsNullOrEmpty(ddlMonth.SelectedValue))
                {
                    query += " AND MONTH(date) = @Month";
                }

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@CurrentDate", DateTime.Now);

                if (ddlEvent.SelectedValue != "All")
                {
                    cmd.Parameters.AddWithValue("@Event", ddlEvent.SelectedValue);
                }

                if (!string.IsNullOrEmpty(ddlYear.SelectedValue))
                {
                    cmd.Parameters.AddWithValue("@Year", ddlYear.SelectedValue);
                }

                if (!string.IsNullOrEmpty(ddlMonth.SelectedValue))
                {
                    cmd.Parameters.AddWithValue("@Month", ddlMonth.SelectedValue);
                }

                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    GridViewCompletedWork.DataSource = dt;
                    GridViewCompletedWork.DataBind();
                }
            }
        }


    }
}