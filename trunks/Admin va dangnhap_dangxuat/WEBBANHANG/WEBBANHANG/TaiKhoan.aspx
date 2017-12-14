<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="TaiKhoan.aspx.cs" Inherits="WEBBANHANG.TaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
<section id="form1" runat="server">
        <div class="khung">
            <div class="ngoai">
                <div class="title">
                    <asp:Label ID="Label1" runat="server" Text="Hồ Sơ Của Tôi" CssClass="tt"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Quản lý thông tin để bảo mật tài khoản"></asp:Label>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="info">
                            <div class="item">
                                <asp:Label ID="Label4" runat="server" Text="Email" Width="100px" CssClass="right"></asp:Label>
                                <asp:Label ID="lbEmail" runat="server" Text="Label"></asp:Label>
                                <asp:Button ID="btnThayDoi" runat="server" Text="Thay đổi" />
                            </div>
                            <div class="item">
                                <asp:Label ID="Label5" runat="server" Text="Số Điện Thoại" Width="100px" CssClass="right"></asp:Label>
                                <asp:Label ID="lbSDT" runat="server" Text="Label"></asp:Label>
                                <asp:Button ID="btnThaydoi1" runat="server" Text="Thay đổi" />
                            </div>
                            <div class="item">
                                <asp:Label ID="Label3" runat="server" Text="Tên" Width="100px" CssClass="right"></asp:Label>
                                <asp:TextBox ID="txtTen" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            </div>
                            <div class="item">
                                <asp:Label ID="Label6" runat="server" Text="Giới tính " Width="100px" CssClass="right"></asp:Label>
                                <asp:RadioButton GroupName="gioiTinh" ID="RadioButton1" Text="Nam" runat="server" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton GroupName="gioiTinh" ID="RadioButton2" Text="Nữ" runat="server" />
                            </div>
                            <div class="item">
                                <asp:Label ID="Label7" runat="server" Text="Ngày Sinh" Width="100px" CssClass="right"></asp:Label>
                                <asp:DropDownList ID="ngay" runat="server" Width="80px" CssClass="q" Height="30px">
                                </asp:DropDownList>
                                <asp:DropDownList ID="thang" runat="server" Width="80px" CssClass="q" Height="30px">
                                </asp:DropDownList>
                                <asp:DropDownList ID="nam" runat="server" Width="80px" CssClass="q" Height="30px">
                                </asp:DropDownList>
                            </div>

                            <div class="btn">
                                <asp:Button ID="Button1" runat="server" Text="Lưu" Height="30px" Width="129px" />
                                <asp:Label ID="lbthongbao" runat="server" CssClass="mg" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="con-right">
                            <div class="image">
                                <asp:Image ID="Image1" runat="server" src="images/user.png" />
                            </div>
                            <div class="btn-right">
                                <asp:Button ID="Button2" runat="server" Text="Chọn ảnh" Height="30px" Width="129px" />
                                <div class="text-right">
                                    <asp:Label ID="Label8" runat="server" CssClass="mg" Text="Dung lượng file tối đa 1 MB"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label9" runat="server" Text="Định dạng .JPEG, .PNG"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

</asp:Content>

