using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Donation_App
{
    public partial class contact2 : System.Web.UI.Page
    {
        DataConn dataConn = new DataConn();
        protected void Page_Load(object sender, EventArgs e)
        {
           TextBox1.Focus();
        }
        protected void Send_Btn(object sender, EventArgs e)
        {
            string ProductID = Session["Product_id"].ToString();
            string MyMail = Session["my_mail"].ToString();
            string BuyerMail = Session["Buyer_mail"].ToString();
            string currentTime = DateTime.Now.ToString();
            string s = "INSERT INTO Messages VALUES ( '" + ProductID + "', '" + MyMail + "', '" + BuyerMail + "', '" + currentTime + "' ,'" + TextBox1.Text + "', 'seller' )";
            dataConn.SetData(s);
            TextBox1.Text = string.Empty;

            Response.Redirect("contact2.aspx");
        }
    }
}