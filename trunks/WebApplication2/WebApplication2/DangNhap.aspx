<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="WebApplication2.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Đăng Nhập Vào Tài Khoản Của Bạn</h2>
						<form action="#">
							<input type="text" placeholder="Tên " />
                            <br />
                            <br />
							<input type="password" placeholder="***********" />
							<span> <input type="checkbox" class="checkbox">Giữ Đăng Nhập </span>
                            <br />
							<button type="submit" class="btn btn-default">Đăng Nhập</button>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">Hoặc</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>Đăng Ký Tài Khoản Mới!</h2>
						<form action="#">
							<input type="text" placeholder="Tên"/>
							<input type="email" placeholder="Email "/>
							<input type="password" placeholder="Password"/>
							<button type="submit" class="btn btn-default">Đăng Ký</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
</asp:Content>
