using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Donation_App
{
    public partial class buyerPage : System.Web.UI.Page
    {
        DataConn dataConn = new DataConn();
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["productId"];
            Session["Product_id"] = ProductID;
            string getData = "SELECT * FROM ChatConnection WHERE Product_ID = '"+ ProductID +"' AND Seller_Mail = '"+ Session["my_mail"].ToString() +"' ";
            DataSet ds = new DataSet();
            ds = dataConn.GetData(getData);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Panel1.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void ChatWithBuyer(object sender, CommandEventArgs e)
        {
            string BuyerMail = e.CommandName.ToString();
            Session["Buyer_mail"] = BuyerMail;
            Response.Redirect("contact2.aspx");
        }
    }
}