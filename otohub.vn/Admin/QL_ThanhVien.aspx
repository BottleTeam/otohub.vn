<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="QL_ThanhVien.aspx.cs" Inherits="QL_ThanhVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
                    <div class="col-md-12">
                     <h2>Quản lý thành viên</h2>
                        <p>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="maThanhVien" DataSourceID="sqlDsThanhVien" HorizontalAlign="Center">
                                <Columns>
                                    <asp:BoundField DataField="maThanhVien" HeaderText="Mã thành viên" ReadOnly="True" SortExpression="maThanhVien">
                                    <ItemStyle HorizontalAlign="Center" Width="150px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="tenThanhVien" HeaderText="Tên thành viên" SortExpression="tenThanhVien">
                                    <ItemStyle Width="250px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="tenDangNhap" HeaderText="Tên đăng nhập" SortExpression="tenDangNhap">
                                    <ItemStyle Width="200px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="loaiSalon" HeaderText="Loại Salon" SortExpression="loaiSalon">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:HyperLinkField DataNavigateUrlFields="maThanhVien" DataNavigateUrlFormatString="ChiTietThanhVien.aspx?maThanhVien={0}" NavigateUrl="~/ChiTietThanhVien.aspx" Text="Xem chi tiêt">
                                    <ControlStyle CssClass="groovybutton" />
                                    </asp:HyperLinkField>
                                    <asp:CommandField ButtonType="Button" DeleteText="Xóa" ShowDeleteButton="True" />
                                </Columns>
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                <PagerSettings FirstPageImageUrl="~/Admin/images/icon/first.png" LastPageImageUrl="~/Admin/images/icon/last.png" Mode="NextPreviousFirstLast" NextPageImageUrl="~/Admin/images/icon/next.png" PreviousPageImageUrl="~/Admin/images/icon/previous.png" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="sqlDsThanhVien" runat="server" ConnectionString="<%$ ConnectionStrings:otohubConnectionString %>" SelectCommand="SELECT [maThanhVien], [tenThanhVien], [tenDangNhap], [loaiSalon] FROM [THANHVIEN]">
                            </asp:SqlDataSource>
                        </p>
                    </div>
                </div>
</asp:Content>

