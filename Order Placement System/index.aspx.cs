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
    public partial class index : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=.;Initial Catalog=orderdb;Integrated Security=True";
            con.Open();
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "Select * from userTable where username='" + username.Text + "' AND password='" + pass.Text + "' ";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "userTable");
            if (ds.Tables[0].Rows.Count > 0)
            {
                /**Session to store the user's username*/
                Session["param"] = username.Text;
                Response.Redirect("dashboard.aspx");
            }
            else {
                Response.Write("<script>alert('username or password is incorect!!!')</script>");
            }

        }
    }
}