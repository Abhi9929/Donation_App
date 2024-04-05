using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;

namespace Donation_App
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] != null)
            {
                string username = Session["username"].ToString();
                Button2.Visible = true;
                if (!string.IsNullOrEmpty(username))
                {
                    char firstLetter = username[0]; // Extract the first letter
                    Button2.Text = firstLetter.ToString();

                    Button1.Text = "Logout";
                }
            }
            else
            {
                Button2.Visible = false;
                Button1.Text = "Login";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button2.Visible = false;
            Button2.Text = "";
            if(Button1.Text == "Logout")
            {
                Response.Write("<script>alert('logged out successfully')</script>");
                Session["username"] = null;
                Session["my_mail"] = null;

                Response.Write("<meta http-equiv='refresh' content='0.1;url=Home.aspx'>");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                string user = Session["username"].ToString();   
                Response.Redirect($"AddProduct.aspx?username={user}");
            }
            else
            {
                Response.Redirect("register.aspx");
            }

        }

    }
}