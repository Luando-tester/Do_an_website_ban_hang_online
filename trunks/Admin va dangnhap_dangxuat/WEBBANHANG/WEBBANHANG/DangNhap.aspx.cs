using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace WEBBANHANG
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            WEBBANHANG.Connect con = new WEBBANHANG.Connect();
            con.conect();    
            string cmdStr = "select * from TaiKhoan where tenKH='" + user.Text + "' and Pass='"+pass.Text+ "'";
            DataTable tb = con.getTK(cmdStr);
            string _type = "0";
            
            if (tb.Rows.Count > 0)
            {
                _type = tb.Rows[0]["kieuKH"].ToString();
                if(_type == "0"){
                Session["IsLogin"] = 1;
                Response.Write("<script>alert('Đăng nhập thành công')</script>");
                Response.Redirect("Default.aspx");
                
                }
            }
            else Response.Write("<script>alert('Username/Password chưa đúng " + _type + "')</script>");
                    
        }
        
         protected void btnDangky_Click(object sender, EventArgs e)
        {
             WEBBANHANG.Connect con = new WEBBANHANG.Connect();
                    con.conect(); 
                    string sql = "select * from TaiKhoan";
                    DataTable tb = con.getTK(sql);
                    int n = int.Parse(tb.Rows.Count.ToString());
                    bool flag = true; 
                    for (int i = 0; i < n; i ++ )
                    {
                        if (tb.Rows[i]["TenKH"].ToString() == rsUser.Text)
                        {
                            flag = false;
                            Response.Write("<script>alert('User đã tồn tại')</script>");
                            break;
                        }
                    }
                    if (flag == true)
                    {
                        if (rsPass.Text != "" && rePass.Text != "")
                        {
                            if (rsPass.Text == rePass.Text)
                            {

                                string _type = "0";
                                string cmdStr = "insert into TaiKhoan(TenKH,Pass,Email,KieuKH)  values(N'" + rsUser.Text + "','" + rsPass.Text + "','" + email.Text + "','" + _type + "')";
                                con.ExeCuteNonQuery(cmdStr);
                                Response.Write("<script>alert('Đăng Ký thành công')</script>");
                                Response.Redirect("DangNhap.aspx");
                            }
                            else
                            {
                                Response.Write("<script>alert('Đăng Ký Thất Bại')</script>");
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Password/nhập lại password không được bỏ trống')</script>");
                        }
                    }
        }
    }
}