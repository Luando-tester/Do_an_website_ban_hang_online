using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEBBANHANG
{
    public class SanPham
    {
        private int _idsanpham;
        public int Idsanpham
        {
            get { return _idsanpham; }
            set { _idsanpham = value; }
        }
        private int _iddanhmuc;
        public int Iddanhmuc
        {
            get { return _iddanhmuc; }
            set { _iddanhmuc = value; }
        }
        private DanhMuc _danhmuc;
        public DanhMuc Danhmuc
        {
            get { return _danhmuc; }
            set { _danhmuc = value; }
        }
        private string _ten;
        public string Ten
        {
            get { return _ten; }
            set { _ten = value; }
        }
        private string _mota;
        public string Mota
        {
            get { return _mota; }
            set { _mota = value; }
        }
        private int _soluong;
        public int Soluong
        {
            get { return _soluong; }
            set { _soluong = value; }
        }
        private string _dulieuhinhsanpham;
        public string Dulieuhinhsanpham
        {
            get { return _dulieuhinhsanpham; }
            set { _dulieuhinhsanpham = value; }
        }
        private int _giasanpham;
        public int Giasanpham
        {
            get { return _giasanpham; }
            set { _giasanpham = value; }
        }
        
        public SanPham()
        {
            _danhmuc = new DanhMuc();
        }
    }
}