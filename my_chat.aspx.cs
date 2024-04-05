using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Donation_App
{
    public partial class my_chat : System.Web.UI.Page
    {   
        DataConn dataConn = new DataConn();
        protected void Page_Load(object sender, EventArgs e)
        {

            //SELECT * FROM [ChatConnection] WHERE ([Buyer_Mail] = @Buyer_Mail)
            //string ProductID = Session["product_id"].ToString();
            string getData = "SELECT * FROM ChatConnection WHERE Buyer_Mail = '" + Session["my_mail"] + "' ";
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
                Session["product_id"] = ds.Tables[0].Rows[0][0].ToString();
                Session["product_name"] = ds.Tables[0].Rows[0][1].ToString();
            }
        }

        protected void ChatWithSeller(object sender, CommandEventArgs e)
        {
            string SellerMail = e.CommandName.ToString();
            Session["seller_mail"] = SellerMail;
            Response.Redirect("contact.aspx");
        }
    }
}