<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="TaiKhoan.aspx.cs" Inherits="WEBBANHANG.ADMIN.TaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
         <div class="row">
							    <div class="col-xs-12">
								    <table id="simple-table" class="table  table-bordered table-hover">
									    <thead>
										    <tr>
											    <th>ID Tài Khoản </th>
											    <th>Tên Tài Khoản</th>

											    <th>
												    Giới Tính
											    </th>
                                                <th>
                                                    Số Điện Thoại
                                                </th>
                                                <th>
                                                    Email
                                                </th>
                                                <th>
                                                    Hình
                                                </th>
										    </tr>
									    </thead>
                                        <asp:Repeater ID="spLoadAdmin" runat="server">
                                          <ItemTemplate>
										    <tr>
											    <td>
                                                           
												    <%# Eval("IDKH") %>
                                                          
											    </td>

											    <td>
                                                     <%# Eval("TenKH") %>
											    </td>
											    <td class="hidden-480"><%# Eval("GioiTInh") %></td>

											    <td class="hidden-480">
												    <%# Eval("SDT") %></span>
											    </td>
                                                <td>
                                                    <%# Eval("Email") %>
                                                </td>
											    <td>
                                                    <img src="/images/shop/<%# Eval("Anh") %>"  class="img-responsive" width="100px" />
											    </td>
										    </tr>
                                         </ItemTemplate>
                                      </asp:Repeater>
                                    </div>
        </div>     
</asp:Content>
