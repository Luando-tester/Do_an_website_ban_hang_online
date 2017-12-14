<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="WEBBANHANG.ADMIN.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <asp:Button ID="bntThemSanPham" OnClick="them_click" runat="server" Text="Thêm Sản Phẩm"  />
    
       
    <div class="row">
							    <div class="col-xs-12">
								    <table id="simple-table" class="table  table-bordered table-hover">
									    <thead>
										    <tr>
											    <th>Hình </th>
											    <th>Tên Sản Phẩm</th>
											    <th class="hidden-480">Giá</th>
											    <th>
												    Mota
											    </th>
                                                <th>

                                                </th>
										    </tr>
									    </thead>
                                        <asp:Repeater ID="spLoadAdmin" runat="server">
                                          <ItemTemplate>
										    <tr>
											            <td>
                                                           
												            <img src="/images/shop/<%# Eval("AnhSP") %>" alt=" " class="img-responsive" width="100px" />
                                                          
											            </td>

											    <td>
                                                     <%# Eval("TenSP") %>
											    </td>
											    <td class="hidden-480"><%# Eval("GiaSP") %></td>

											    <td class="hidden-480">
												    <%# Eval("ChiTiet") %></span>
											    </td>

											    <td>
                                                    <a href="SuaSanPham.aspx?id=<%# Eval("idSP") %>" class="btn btn-default add-to-cart">Cập Nhật</a>
											    </td>
										    </tr>
                                         </ItemTemplate>
                                      </asp:Repeater>
                                    </div>
        </div>    

</asp:Content>
