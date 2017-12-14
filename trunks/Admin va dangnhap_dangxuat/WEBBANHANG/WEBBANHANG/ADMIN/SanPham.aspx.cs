using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBBANHANG.ADMIN
{
    public partial class SanPham : System.Web.UI.Page
    {
        WEBBANHANG.Connect sp = new WEBBANHANG.Connect();
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
            string sql = "select * from SanPham";
            sp.conect();
            sp.get(sql);
            spLoadAdmin.DataSource = sp.get(sql);
            spLoadAdmin.DataBind();
        }
        protected void them_click(object sender, EventArgs e)
        {
            Response.Redirect("ThemSanPham.aspx");
        }
    }
}