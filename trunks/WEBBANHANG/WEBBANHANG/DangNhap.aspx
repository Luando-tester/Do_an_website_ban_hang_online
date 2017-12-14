<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="WEBBANHANG.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Đăng Nhập Vào Tài Khoản Của Bạn</h2>   
                        <asp:TextBox ID="user" placeholder="User" runat="server" />
                        <br />
                        <asp:TextBox ID="pass" placeholder="Password" TextMode="Password" runat="server" />  
                        <br />
                        <asp:Button Text="Đăng Nhập" OnClick="btnDangNhap_Click" ID="DanhNhap" runat="server" />
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">Hoặc</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>Đăng Ký Tài Khoản Mới!</h2>
                        <asp:TextBox ID="rsUser" Text="" placeholder="User" runat="server" />
                        <br />
                        <asp:TextBox ID="rsPass" Text=""  placeholder="Password" TextMode="Password" runat="server" />
                        <br />
                        <asp:TextBox ID="rePass" Text=""  placeholder="Nhập lại Password" TextMode="Password" runat="server" />
                        <br />
                        <asp:TextBox ID="email" placeholder="Email" runat="server" />    
                        <br />  
						<asp:Button ID="DangKy" Text="Đăng Ký" OnClick="btnDangky_Click" runat="server" />	
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
</asp:Content>

