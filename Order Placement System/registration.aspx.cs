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
    public partial class registration : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=orderdb;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regBtn_Click(object sender, EventArgs e)
        {
            if (!CheckBoxterms.Checked)
            {
                Response.Write("<script>alert('Agree the terms & conditions first!');</script>");
            }
            else {

                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into usertable (NicNo,FirstName,LastName,Email,Username,Address,Password,Telephone) values('"+nicNo.Text+ "','" + firstName.Text + "','" + lastName.Text + "','" + email.Text + "','" + username.Text + "','" + address.Text + "','" + password.Text + "','" + telephone.Text + "')", con);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('record Added!!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error!!!')</script>");
                }
            }
        }
    }
}