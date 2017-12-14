<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="WEBBANHANG.LienHe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
<div id="contact-page" class="container">
    	<div class="bg">
	    	<div class="row">    		
	    		<div class="col-sm-12">    			   			
					<h2 class="title text-center"><strong>Liên Hệ Với Chúng Tôi</strong></h2>    			    				    				
					<div id="gmap" class="contact-map">
					</div>
				</div>			 		
			</div>    	
    		<div class="row">  	
	    		<div class="col-sm-8">
	    			<div class="contact-form">
	    				<h2 class="title text-center">Liên Hệ</h2>
	    				<div class="status alert alert-success" style="display: none"></div>
				    	<form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
				            <div class="form-group col-md-6">
				                <input type="text" name="name" class="form-control" required="required" placeholder="Tên Của Bạn"/>
				            </div>
				            <div class="form-group col-md-6">
				                <input type="email" name="email" class="form-control" required="required" placeholder="Email"/>
				            </div>
				            <div class="form-group col-md-12">
				                <input type="text" name="subject" class="form-control" required="required" placeholder="Tiêu Đề"/>
				            </div>
				            <div class="form-group col-md-12">
				                <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Lời Nhắn Của Bạn"></textarea>
				            </div>                        
				            <div class="form-group col-md-12">
                                <
				                <input type="submit" name="Gửi" class="btn btn-primary pull-right" value="Submit"/>
				            </div>
				        </form>
	    			</div>
	    		</div>
	    		<div class="col-sm-4">
	    			<div class="contact-info">
	    				<h2 class="title text-center">Thông Tin Liên Hệ</h2>
	    				<address>
	    					<p>No Name Shop's Inc.</p>
							<p>935 W. Webster Ave New Streets Chicago, IL 60614, NY</p>
							<p>TP. Hồ Chí Minh </p>
							<p>Mobile: +2346 17 38 93</p>
							<p>Fax: 1-714-252-0026</p>
							<p>Email: info@No Name Shop's.com</p>
	    				</address>

	    			</div>
    			</div>    			
	    	</div>  
    	</div>	
    </div><!--/#contact-page-->
</asp:Content>

