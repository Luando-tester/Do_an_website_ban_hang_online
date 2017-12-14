<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="WEBBANHANG.ADMIN.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
<table style="width: 820px">
        <tr>
            <td colspan="2" style="font-size: 20pt; color: #990000; font-style: normal; text-align: center">
                ĐĂNG NHẬP QUYỀN QUẢN TRỊ WEBSITE</td>
        </tr>
        <tr>
            <td style="width: 200px; height: 26px">
                Tên đăng nhập</td>
            <td style="width: 520px; height: 26px">
                <asp:TextBox ID="txtUser" runat="server" Width="180px"> </asp:TextBox>
                
        </tr>
        <tr>
            <td style="width: 200px">
                Mật khẩu</td>
            <td style="width: 520px">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                
        </tr>
        <tr>
            <td style="width: 200px">
            </td>
            <td style="width: 520px">
                <asp:Button ID="btnDangNhap" runat="server" OnClick="btnDangNhap_Click" Text="Đăng Nhập" />
                <asp:Label ID="labelMessage" runat="server"></asp:Label></td>
        </tr>
    </table>
</asp:Content>
