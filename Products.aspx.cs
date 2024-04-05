using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Donation_App
{
    public partial class Products : System.Web.UI.Page
    {
        DataConn  dataConn = new DataConn();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BuyProduct(object sender, CommandEventArgs e)
        {
            if (Session["username"] != null)
            {
                string ProductID = e.CommandName.ToString();
                if(CheckForOwnProduct(ProductID)) 
                {
                   Response.Redirect($"BuyProduct.aspx?productId={ProductID}"); 
                }
                else
                {
                    Response.Write("Can't buy own product");
                    //Response.Write("<script>alert('Can't buy own Product')</script>");
                    //Response.Write("<meta http-equiv='refresh' content='0.1;url=Products.aspx'>");
                }
            }
            else
            {
                Response.Write("<script>alert('PLease Login First')</script>");
                Response.Write("<meta http-equiv='refresh' content='0.1;url=Products.aspx'>");
            }

        }

        private bool CheckForOwnProduct(string ProductID)
        {
            string s = "SELECT * FROM products WHERE seller_email = '" + Session["my_mail"].ToString() + "' AND ProductID = '"+ ProductID +"' ";
            DataSet ds = new DataSet();
            ds = dataConn.GetData(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}