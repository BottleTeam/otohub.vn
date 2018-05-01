<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="QL_OTo.aspx.cs" Inherits="QL_OTo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sqlDsOtoList" runat="server" ConnectionString="<%$ ConnectionStrings:otohubConnectionString %>" SelectCommand="SELECT * FROM [OTO_View_Admin]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="maXe" DataSourceID="sqlDsOtoList" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="maXe" HeaderText="Mã xe" ReadOnly="True" SortExpression="maXe">
            <HeaderStyle HorizontalAlign="Center" Width="100px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="anh" DataImageUrlFormatString="~/Admin/images/Oto/{0}" HeaderText="Ảnh">
                <ControlStyle Height="100px" Width="100px" />
                <ItemStyle Width="150px" />
            </asp:ImageField>
            <asp:BoundField DataField="tenXe" HeaderText="Tên xe" SortExpression="tenXe">
            <HeaderStyle Width="300px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="tenHangXe" HeaderText="Hãng" SortExpression="tenHangXe">
            <HeaderStyle Width="150px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="xuatXu" HeaderText="Xuất xứ" SortExpression="xuatXu">
            <HeaderStyle Width="150px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="maThanhVien" DataNavigateUrlFormatString="ChiTietThanhVien.aspx?maThanhVien={0}" DataTextField="maThanhVien" HeaderText="Mã người bán" NavigateUrl="~/Admin/ChiTietThanhVien.aspx" />
            <asp:BoundField DataField="ngayDangBan" HeaderText="Ngày đăng bán" SortExpression="ngayDangBan">
            <HeaderStyle Width="150px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="maXe" DataNavigateUrlFormatString="ChiTietXe.aspx?maXe={0}" NavigateUrl="~/ChiTietXe.aspx" Text="Xem chi tiết" />
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
</asp:Content>

