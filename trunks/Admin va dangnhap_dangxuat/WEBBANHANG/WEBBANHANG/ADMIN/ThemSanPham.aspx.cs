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
    public partial class ThemSanPham : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            int nDaDangNhap = (Int32)Session["IsLogin"];
            if (nDaDangNhap == 0)
                Response.Redirect("DangNhap.aspx");
            if (!IsPostBack)
            {
                txtTenSanPham.Focus(); 
                HienThiDanhMucSanPham();
            }
        }
        private void HienThiDanhMucSanPham()
        {
            Connect data = new Connect();
            data.conect();
            string sql = "select IDSP,DanhMucSP from DanhMucSP";
            dropDanhMucSanPham.DataSource = data.get(sql);
            dropDanhMucSanPham.DataTextField = "DanhMucSP";
            dropDanhMucSanPham.DataValueField = "IDSP";
            dropDanhMucSanPham.DataBind();
        }
        protected void capnhat_click(object sender, EventArgs e)
        {
            Connect data = new Connect();
            try
            {
                data.conect();
                WEBBANHANG.SanPham sp = new WEBBANHANG.SanPham();
                sp.Iddanhmuc = int.Parse(dropDanhMucSanPham.SelectedItem.Value);
                sp.Ten = txtTenSanPham.Text;
                sp.Giasanpham = int.Parse(txtGia.Text);
                sp.Mota = txtmota.Text;
                sp.Dulieuhinhsanpham = fileuploadHinhSanPham.FileName;
                string sql = "insert into SanPham(tenSP,DanhMuc,GiaSP,ChiTiet,AnhSP)  values(N'" + sp.Ten + "','" + sp.Iddanhmuc + "','" + sp.Giasanpham + "',N'" + sp.Mota + "','" + sp.Dulieuhinhsanpham + "')";
                data.ExeCuteNonQuery(sql);
                Response.Write("<script>alert('Đã thêm thành công !')</script>"); 
            }
            catch (SqlException sqle)
            {
                Response.Write("<script>alert('Thêm Không thành công !')</script>"); ;
            }
            finally
            {
                data.disconnect(); 
            }   


        }
        protected void BtnBoQua_Click(object sender, EventArgs e)
        {
            Response.Redirect("SanPham.aspx");
        }
    }
}