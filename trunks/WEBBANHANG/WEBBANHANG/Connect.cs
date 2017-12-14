using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
namespace WEBBANHANG
{
    public class Connect
    {
        SqlConnection conn;
        SqlDataAdapter da;
        DataSet ds;
        DataTable db;
        SqlCommand cmd;
        string connectionString = @"Data Source=.\SQLEXPRESS;Initial Catalog=BanHang;Integrated Security=True;";
        public SqlConnection getConnect()
        {
            conn = new SqlConnection(connectionString);
            return conn;
        }
        public void conect()
        {
            if (conn == null)
                conn = new SqlConnection(connectionString);
            if (conn.State == ConnectionState.Closed)
                conn.Open();
        }
        public void disconnect()
        {
            if ((conn != null) && (conn.State == ConnectionState.Open))
                conn.Close();
        }
        public DataSet get(string sql)
        {
            conect();
            da = new SqlDataAdapter(sql, conn);
            ds = new DataSet();
            da.Fill(ds);
            disconnect();
            return ds;
        }
        public DataTable getTK(string sql)
        {
            conect();
            da = new SqlDataAdapter(sql, conn);
            db = new DataTable();
            da.Fill(db);
            disconnect();
            return db;
        }
        public void ExeCuteNonQuery(string sql)
        {
            conect();
            cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            disconnect();
        }
    }
}