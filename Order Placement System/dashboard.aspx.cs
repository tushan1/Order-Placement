using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Order_Placement_System
{
    public partial class dashboard : System.Web.UI.Page
    {
        string connectionString = @"Data Source=.;Initial Catalog=orderdb;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString)) {
                sqlCon.Open();
                SqlDataAdapter sqlAdapter = new SqlDataAdapter("Select * from orderTable where username='"+ Session["param"].ToString() + "'", sqlCon);
                DataTable dtbl = new DataTable();
                sqlAdapter.Fill(dtbl);
                ordersGridView.DataSource = dtbl;
                ordersGridView.DataBind();
            }

            /**Setting the username using the session from the login */
            usernameLbl.Text = Session["param"].ToString();
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}