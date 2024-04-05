using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Donation_App
{
    public class DataConn
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter da;

        public DataConn()
        {
            conn = new SqlConnection(@"Data Source=LAPTOP-4PUON2EE\SQLEXPRESS03;Initial Catalog=donationApp;Integrated Security=True;");
            conn.Open();
        }

        public void SetData(string s)
        {
            cmd = new SqlCommand(s, conn);
            cmd.ExecuteNonQuery();
        }
        public DataSet GetData(string s)
        {
            da = new SqlDataAdapter(s, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}