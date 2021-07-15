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
    public partial class orderPage : System.Web.UI.Page
    {
       
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=orderdb;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            /**Setting the username using the session from the login */
            usernameLbl.Text = Session["param"].ToString();
        }

        protected void packageOneQty_TextChanged(object sender, EventArgs e)
        {
            int package1SubTotal = Convert.ToInt32(packageOneQty.Text) * 250;
            if (CheckBox1.Checked)
            {
                packageOneSubTotal.Text = package1SubTotal.ToString();
            }
            else {
                Response.Write("<script>alert('Check the package 1 first!');</script>");
            }

        }

        protected void packageTwoQty_TextChanged(object sender, EventArgs e)
        {
            int package2SubTotal = Convert.ToInt32(packageTwoQty.Text) * 350;
            if (CheckBox2.Checked) {
                packageTwoSubTotal.Text = package2SubTotal.ToString();
            }
            else
            {
                Response.Write("<script>alert('Check the package 2 first!');</script>");
            }
        }


        protected void packageThreeQty_TextChanged(object sender, EventArgs e)
        {
            int package3SubTotal = Convert.ToInt32(packageThreeQty.Text) * 500;
            if (CheckBox3.Checked) {
                packageThreeSubTotal.Text = package3SubTotal.ToString();
            }
            else
            {
                Response.Write("<script>alert('Check the package 3 first!');</script>");
            }
        }

        protected void generateTotalBtn_Click(object sender, EventArgs e)
        {
            int total = Convert.ToInt32(packageOneSubTotal.Text) + Convert.ToInt32(packageTwoSubTotal.Text) + Convert.ToInt32(packageThreeSubTotal.Text);
            TotalBox.Text = total.ToString();
        }

        //insert into database
        protected void placeOrder_Click(object sender, EventArgs e)
        {
            int pkg1 =Convert.ToInt32(packageOneQty.Text);
            int pkg2 =Convert.ToInt32(packageTwoQty.Text);
            int pkg3 =Convert.ToInt32(packageThreeQty.Text);
            int total = Convert.ToInt32(TotalBox.Text);
            DateTime now = DateTime.Now;


            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into orderTable (Username,Package1,Package2,Package3,Total,DateTime) values('"+ Session["param"].ToString() + "','" + pkg1 + "','" + pkg2 + "','" + pkg3 + "','" + total + "','"+now+"')", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('record Added!!')</script>");
            }
            else {
                Response.Write("<script>alert('Error!!!')</script>");
            }

        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}