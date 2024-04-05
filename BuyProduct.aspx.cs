using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Donation_App
{
    public partial class BuyProduct : System.Web.UI.Page
    {
        DataConn dataConn = new DataConn();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {

                if (Request.QueryString["productId"] != null)
                {
                    string prod_id = Request.QueryString["productId"];

                    string getData = "SELECT * FROM products WHERE ProductID = '" + prod_id + "' ";
                    ds = dataConn.GetData(getData);

                    Label1.Text = ds.Tables[0].Rows[0][3].ToString();
                    Label2.Text = ds.Tables[0].Rows[0][1].ToString();
                    string sellerName = ds.Tables[0].Rows[0][2].ToString();
                    Button1.Text = "Contact to " + sellerName;
                    string imgName = ds.Tables[0].Rows[0][5].ToString();
                    Image1.ImageUrl = "~/Images/" + imgName;

                    Session["seller_mail"] = ds.Tables[0].Rows[0][6].ToString();
                    Session["product_id"] = Request.QueryString["productId"];
                    Session["product_name"] = ds.Tables[0].Rows[0][1].ToString();
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Contact_Btn(object sender, EventArgs e)
        {
            //string seller_mail = ViewState["seller_mail"].ToString();
            //string productId = ViewState["product_id"].ToString();
            Response.Redirect("contact.aspx");
        }
    }
}