using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace WEBBANHANG.ADMIN
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
            string cmdStr = "select * from TaiKhoan where tenKH='" + txtUser.Text + "' and Pass='"+txtPass.Text+ "'";
            DataTable tb = con.getTK(cmdStr);
            string _type = "0";
            
            if (tb.Rows.Count > 0)
            {
                _type = tb.Rows[0]["kieuKH"].ToString();
                if(_type == "1"){
                Session["IsLogin"] = 1;
                Response.Redirect("Default.aspx");
                Response.Write("<script>alert('Đăng nhập thành công')</script>");
                }
            }
            else Response.Write("<script>alert('Username/Password chưa đúng " + _type + "')</script>");
                    
            }
        }
    
}