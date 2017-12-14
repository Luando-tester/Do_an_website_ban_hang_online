using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBBANHANG.ADMIN
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int nDaDangNhap = (Int32)Session["IsLogin"];
            if (nDaDangNhap == 0)
                Response.Redirect("DangNhap.aspx");
        }
    }
}