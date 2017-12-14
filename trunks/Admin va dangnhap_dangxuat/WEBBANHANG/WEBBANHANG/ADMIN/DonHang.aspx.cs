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
    public partial class DonHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int nDaDangNhap = (Int32)Session["IsLogin"];
            if (nDaDangNhap == 0)
                Response.Redirect("DangNhap.aspx");
        }
    }
}