using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Donation_App;

namespace Donation_App
{
    public partial class AddProduct : System.Web.UI.Page
    {
        DataConn dataConn = new DataConn();
        protected void Page_Load(object sender, EventArgs e)
        {
            AutoGenerateID();
            if (!IsPostBack)
            {
                DropDownList1.Items.Insert(0, new ListItem("Select Category", ""));
                DropDownList1.SelectedIndex = 0;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            AutoGenerateID();
            string ProductID = ViewState["ProductID"].ToString();

            string SellerName = Request.QueryString["username"].ToString();

            if (FileUpload1.HasFile)
            {
                string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".webp")
                {
                    FileUpload1.SaveAs(Server.MapPath("~/Images/" + FileUpload1.FileName));
                    //Label1.Text = "File uploaded successfully";

                    // Insert data into Supplier table
                    string setData = "INSERT INTO products VALUES ('" + ProductID + "', '" + TextBox1.Text + "','" + SellerName + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue.ToString() + "', '" + FileUpload1.FileName + "', '"+ Session["my_mail"] +"')";
                    dataConn.SetData(setData);

                    Response.Write("<script>alert('Product Added successfully')</script>");
                    TextBox1.Text = TextBox3.Text =  string.Empty;
                    DropDownList1.SelectedIndex = 0;
                }
                else
                {
                    //Label1.Text = "Please select image only ";
                    //Label1.ForeColor = System.Drawing.Color.Red;
                }
            }


        }

        //private void CheckSeller(string username)
        //{
        //    string getString = "SELECT * FROM users WHERE user_email = '"+ username + "'";
        //    DataSet ds = new DataSet();
        //    ds = dataConn.GetData(getString);
        //    if (ds.Tables[0].Rows.Count == 0)
        //    {
        //        ViewState["ProductID"] = 101;
        //    }
        //    else
        //    {
        //        ViewState["ProductID"] = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1;
        //    }
        //}

        private void AutoGenerateID()
        {
            string getString = "SELECT * FROM products ORDER BY ProductID DESC";
            DataSet ds = new DataSet();
            ds = dataConn.GetData(getString);
            if (ds.Tables[0].Rows.Count == 0)
            {
                ViewState["ProductID"] = 101;
            }
            else
            {
                ViewState["ProductID"] = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1;
            }
        }
    }
}


