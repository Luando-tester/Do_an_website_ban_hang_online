using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBBANHANG.ADMIN
{
    public partial class TaiKhoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int nDaDangNhap = (Int32)Session["IsLogin"];
            if (nDaDangNhap == 0)
                Response.Redirect("DangNhap.aspx");
            if (!IsPostBack)
            {
                load_data();
            }
        }
        protected void load_data()
        {
            WEBBANHANG.Connect sp = new WEBBANHANG.Connect();
            string sql = "select * from TaiKhoan where KieuKH = '0'";
            sp.conect();
            sp.get(sql);
            spLoadAdmin.DataSource = sp.get(sql);
            spLoadAdmin.DataBind();
        }
    }
}