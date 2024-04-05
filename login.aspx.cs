using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Donation_App
{
    public partial class login : System.Web.UI.Page
    {
        DataConn dataConn = new DataConn();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string getData = "SELECT * FROM users WHERE user_email = '" + TextBox1.Text + "' AND user_password = '" + TextBox2.Text + "'";
            DataSet ds = new DataSet();
            ds = dataConn.GetData(getData);

            if (ds.Tables[0].Rows.Count == 0 )
            {
                Response.Write("<script>alert('Invalid email and password')</script>");
            }
            else
            {
                Session["username"] = ds.Tables[0].Rows[0][0].ToString();
                Session["my_mail"] = ds.Tables[0].Rows[0][1].ToString();
                Response.Redirect("Home.aspx");

            }
        }
    }
}