using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBBANHANG
{
    public partial class Masterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load_dangNhap();
            }
        }
        protected void load_dangNhap()
        {
            if (Session["IsLogin"].ToString() == "1")
            {
                DN.Visible = false;
                DX.Visible = true;

            }
            else
            {
                DN.Visible = true;
                DX.Visible = false;
            }
        }

        protected void dangNhap_Click(object sender, EventArgs e)
        {
            Response.Redirect("DangNhap.aspx");
           
        }

        protected void dangXuat_Click(object sender, EventArgs e)
        {
            Session["IsLogin"] = 0;
            Response.Redirect("Default.aspx");

        }
    }
}