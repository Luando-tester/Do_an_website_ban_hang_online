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
    public partial class SuaSanPham : System.Web.UI.Page
    {
        int idDanhMuc;
        string hinh;
        protected void Page_Load(object sender, EventArgs e)
        {
            int nDaDangNhap = (Int32)Session["IsLogin"];
            if (nDaDangNhap == 0)
                Response.Redirect("DangNhap.aspx");
            if (!IsPostBack)
            {
                load_data();
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
            int idSP = int.Parse(Request.QueryString["id"]);
            Connect data = new Connect();
            try
            {
                data.conect();
                WEBBANHANG.SanPham sp = new WEBBANHANG.SanPham();
                if (idDanhMuc != int.Parse(dropDanhMucSanPham.SelectedItem.Value))
                {
                    sp.Iddanhmuc = int.Parse(dropDanhMucSanPham.SelectedItem.Value);
                }
                else
                {
                    sp.Iddanhmuc = idDanhMuc;
                }
                sp.Ten = txtTenSanPham.Text;
                sp.Giasanpham = int.Parse(txtGia.Text);
                sp.Mota = txtmota.Text;
                if (fileuploadHinhSanPham.FileName != "")
                {
                    if(fileuploadHinhSanPham.FileName != hinh){
                    sp.Dulieuhinhsanpham = fileuploadHinhSanPham.FileName;
                    }
                }
                else
                {
                    sp.Dulieuhinhsanpham = hinh;
                }
                string sql = "update SanPham set tenSP = N'" + sp.Ten + "',danhMuc ='" + sp.Iddanhmuc + "',GiaSP ='" + sp.Giasanpham + "',ChiTiet = N'" + sp.Mota + "', AnhSP = '" + sp.Dulieuhinhsanpham + "' where idSP='" + idSP + "'";
                data.ExeCuteNonQuery(sql);
                Response.Write("<script>alert('Cập Nhật thành công !')</script>");
            }
            catch
            {
                Response.Write("<script>alert('Cập nhật thất bại!')</script>");
            }
            finally
            {
                data.disconnect();
            }

        }
        protected void Xoa_click(object sender, EventArgs e)
        {
            int idSP = int.Parse(Request.QueryString["id"]);
            Connect data = new Connect();
            try
            {
                data.conect();
                string sql = "delete SanPham  where idSP='" + idSP + "'";
                data.ExeCuteNonQuery(sql);
                Response.Write("<script>alert('Xóa thành công !')</script>");
            }
            catch
            {
                Response.Write("<script>alert('Xóa không thành công !')</script>");
            }
            finally
            {
                data.disconnect();
            }

        }
        protected void load_data()
        {
            int idSP = int.Parse(Request.QueryString["id"]);
            Connect con = new Connect();
            con.conect();
            string ql = "select * from SanPham where idSP = '" + idSP + "'";
           DataTable tb = con.getTK(ql);
            idDanhMuc = int.Parse(tb.Rows[0]["danhMuc"].ToString());
            hinh = tb.Rows[0]["AnhSP"].ToString();
            txtTenSanPham.Text = tb.Rows[0]["tenSP"].ToString();
            txtGia.Text = tb.Rows[0]["GiaSP"].ToString();
            txtmota.Text = tb.Rows[0]["ChiTiet"].ToString();
        }
        protected void BtnBoQua_Click(object sender, EventArgs e)
        {
            Response.Redirect("SanPham.aspx");
        }
    }
}