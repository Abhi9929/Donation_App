using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Donation_App
{
    public partial class mydonation : System.Web.UI.Page
    {
        DataConn dataConn = new DataConn();
        protected void Page_Load(object sender, EventArgs e)
        {
            string getData = "SELECT * FROM products WHERE seller_email = '" + Session["my_mail"] + "'";
            DataSet ds = new DataSet(); 
            ds = dataConn.GetData(getData);
            if (ds.Tables[0].Rows.Count == 0 )
            {
                Panel1.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                ViewState["ProductName"] = ds.Tables[0].Rows[0][1].ToString();
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
                Response.Redirect("login.aspx");
            }
        }   

        protected void BuyersList(object sender, CommandEventArgs e)
        {
            string ProductID = e.CommandName.ToString();
            string ProductName = ViewState["ProductName"].ToString().Trim();
            Response.Redirect($"buyerPage.aspx?productId={ProductID}&productName={ProductName}");
        }
    }
}