using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Donation_App
{
    public partial class register : System.Web.UI.Page
    {
        DataConn dataConn = new DataConn();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ExistingUser(TextBox2.Text))

            {
                string s = "INSERT INTO users VALUES ( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "' )";

                dataConn.SetData(s);

                Session["username"] = TextBox1.Text;
                Session["my_mail"] = TextBox2.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('User Already exists!!')</script>");
            }
        }

        public bool ExistingUser(string username)
        {
            string s = "SELECT * FROM users WHERE user_email = '" + username + "'";
            DataSet ds = new DataSet();
            ds = dataConn.GetData(s);

            if (ds.Tables[0].Rows.Count > 0) return false;
            else return true;
        }
    }
}