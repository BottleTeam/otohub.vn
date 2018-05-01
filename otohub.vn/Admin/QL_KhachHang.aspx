<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="QL_KhachHang.aspx.cs" Inherits="QL_KhachHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
                    <div class="col-md-12">
                     <h2>Quản lý khách hàng</h2>   
                        
                    </div>
                </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="maKH" DataSourceID="sqlDsKhachHang">
    <Columns>
        <asp:BoundField DataField="maKH" HeaderText="Mã Khách Hàng" ReadOnly="True" SortExpression="maKH" >
        <HeaderStyle HorizontalAlign="Center" />
        <ItemStyle HorizontalAlign="Center" Width="125px" />
        </asp:BoundField>
        <asp:BoundField DataField="tenKH" HeaderText="Tên Khách Hàng" SortExpression="tenKH" >
        <HeaderStyle HorizontalAlign="Center" />
        <ItemStyle Width="200px" />
        </asp:BoundField>
        <asp:BoundField DataField="email" HeaderText="Địa chỉ email" SortExpression="email" >
        <HeaderStyle HorizontalAlign="Center" />
        <ItemStyle Width="250px" />
        </asp:BoundField>
        <asp:BoundField DataField="soDienThoai" HeaderText="Số điện thoại" SortExpression="soDienThoai" >
        <HeaderStyle HorizontalAlign="Center" />
        <ItemStyle HorizontalAlign="Center" Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="diaChi" HeaderText="Địa chỉ" SortExpression="diaChi" >
        <HeaderStyle HorizontalAlign="Center" />
        <ItemStyle Width="400px" />
        </asp:BoundField>
        <asp:ButtonField ButtonType="Button" Text="Gửi tin nhắn" />
        <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Xóa " />
    </Columns>
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerSettings Mode="NextPreviousFirstLast" FirstPageImageUrl="~/Admin/images/icon/first.png" LastPageImageUrl="~/Admin/images/icon/last.png" NextPageImageUrl="~/Admin/images/icon/next.png" PreviousPageImageUrl="~/Admin/images/icon/previous.png" />
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#330099" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <SortedAscendingCellStyle BackColor="#FEFCEB" />
    <SortedAscendingHeaderStyle BackColor="#AF0101" />
    <SortedDescendingCellStyle BackColor="#F6F0C0" />
    <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
<asp:SqlDataSource ID="sqlDsKhachHang" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT * FROM [KHACHHANG]"></asp:SqlDataSource>

</asp:Content>

