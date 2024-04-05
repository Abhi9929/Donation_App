using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Donation_App
{
    public partial class contact : System.Web.UI.Page
    {
        DataConn dataConn = new DataConn();
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Focus();
            Response.Write(Session["product_id"].ToString());
            Response.Write(Session["product_name"].ToString()); 
            Response.Write(Session["seller_mail"].ToString());
        }

        protected void Send_Btn(object sender, EventArgs e)
        {
            string BuyerMail = Session["my_mail"].ToString();
            string ProductID = Session["product_id"].ToString();
            string SellerMail = Session["seller_mail"].ToString();
            string currentTime = DateTime.Now.ToString();
            string ProductName = Session["product_name"].ToString();

            if (CheckConnection(ProductID, SellerMail, BuyerMail))
            {
                // If no connection found then set new connection
                SetNewConnection(ProductID, SellerMail, BuyerMail, currentTime, ProductName);
            }

            string s = "INSERT INTO Messages VALUES ( '" + ProductID + "', '" + SellerMail + "', '" + BuyerMail + "', '" + currentTime + "' ,'" + TextBox1.Text + "', 'buyer' )";
            dataConn.SetData(s);
            TextBox1.Text = string.Empty;

            Response.Redirect("contact.aspx");
        }

        private bool CheckConnection(string ProductID, string SellerMail, string BuyerMail)
        {
            string getData = "SELECT * FROM ChatConnection WHERE Product_ID = '" + ProductID + "' AND Seller_Mail = '" + SellerMail + "' AND Buyer_Mail = '" + BuyerMail + "' ";
            DataSet ds = new DataSet();
            ds = dataConn.GetData(getData);
            if (ds.Tables[0].Rows.Count == 0)
            {
                // if no connections found then return true
                return true;
            }
            else return false;
        }

        private void SetNewConnection(string ProductID, string SellerMail, string BuyerMail, string currentTime, string ProductName)
        {
            string s = "INSERT INTO ChatConnection VALUES ( '" + ProductID + "', '" + ProductName + "', '" + SellerMail + "', '" + BuyerMail + "', '" + currentTime + "', 'seller' )";
            dataConn.SetData(s);
        }
    }
}