<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="ThemSanPham.aspx.cs" Inherits="WEBBANHANG.ADMIN.ThemSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
<table border="0" cellpadding="0" cellspacing="0" style="width: 820px">
        <tr>
            <td style="width: 200px" align="center">
                Tên Sản Phẩm </td>
            <td style="width: 620px">
                <asp:TextBox ID="txtTenSanPham" runat="server"></asp:TextBox>   
                </td>
                     
        </tr>
        <tr>
            <td style="width: 200px; height: 19px" align="center">
                Danh Mục Sản Phẩm</td>
            <td style="width: 620px; height: 19px">
                <asp:DropDownList ID="dropDanhMucSanPham" runat="server" Width="155px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 200px" align="center">
                Mô Tả Sản Phẩm</td>
            <td style="width: 620px">
                <asp:TextBox ID="txtmota"  runat="server" />
                 
            </td>
        </tr>
        <tr>
            <td style="width: 200px" align="center">
                Giá Sản Phẩm</td>
            <td style="width: 620px">
                <asp:TextBox ID="txtGia" runat="server"></asp:TextBox></td>
          
        </tr>
        <tr>
            <td style="width: 200px; height: 22px" align="center">
                Hình Sản Phẩm</td>
            <td style="width: 620px; height: 22px">
                <asp:FileUpload ID="fileuploadHinhSanPham" runat="server" Width="297px" /></td>
        </tr>
    
        <tr>
            <td style="width: 200px; height: 24px;">
            </td>
            <td style="width: 620px; height: 24px;">
                <asp:Button ID="btnCapNhat" OnClick="capnhat_click" runat="server" Text="Thêm"  />
                <asp:Button ID="BtnBoQua" OnClick="BtnBoQua_Click" runat="server" Text="Bỏ qua"  /></td>
        </tr>
        
    </table>
</asp:Content>

