<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="QL_Hang.aspx.cs" Inherits="QL_Hang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12">
            
                <div style="text-align: center">
                   <h2> Quản lý hãng xe  </h2>
                </div>
    <asp:SqlDataSource ID="sqlDsHang" runat="server" ConnectionString="<%$ ConnectionStrings:otohubConnectionString %>" DeleteCommand="DELETE FROM [HANGXE] WHERE [maHangXe] = @maHangXe" InsertCommand="INSERT INTO [HANGXE] ([maHangXe], [tenHangXe], [moTa], [logo]) VALUES (@maHangXe, @tenHangXe, @moTa, @logo)" SelectCommand="SELECT * FROM [HANGXE]" UpdateCommand="UPDATE [HANGXE] SET [tenHangXe] = @tenHangXe, [moTa] = @moTa, [logo] = @logo WHERE [maHangXe] = @maHangXe">
        <DeleteParameters>
            <asp:Parameter Name="maHangXe" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="maHangXe" Type="String" />
            <asp:Parameter Name="tenHangXe" Type="String" />
            <asp:Parameter Name="moTa" Type="String" />
            <asp:Parameter Name="logo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tenHangXe" Type="String" />
            <asp:Parameter Name="moTa" Type="String" />
            <asp:Parameter Name="logo" Type="String" />
            <asp:Parameter Name="maHangXe" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
           
                <div style="height: 62px; text-align: center;" >                  
                    <input id="txtTimKiem" type="text" placeholder="Nhập mã hoặc tên hãng" style="height: 30px; width: 249px; margin-right:30px" runat="server"/>
                    <asp:Button ID="btnTimKiem" runat="server" height="30px" Text="Tìm" width="100px" OnClick="btnTimKiem_Click" />
                    <asp:Button ID="btnThemMoi" runat="server" height="30px" PostBackUrl="~/QL_Hang_ThemMoi.aspx" Text="Thêm mới"  />
                </div>
           
        </div>
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="maHangXe" DataSourceID="sqlDsHang" style="position: relative; left: 0px; top: 0px; text-align: center;" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="maHangXe" HeaderText="Mã Hãng" ReadOnly="True" SortExpression="maHangXe">
                <HeaderStyle HorizontalAlign="Center" Width="120px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="tenHangXe" HeaderText="Tên Hãng" SortExpression="tenHangXe">
                <HeaderStyle HorizontalAlign="Center" Width="200px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="moTa" HeaderText="Mô tả" SortExpression="moTa">
                <HeaderStyle HorizontalAlign="Center" Width="500px" />
            <ItemStyle HorizontalAlign="Center" Width="500px" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="logo" DataImageUrlFormatString="~/Admin/images/Hang/{0}" HeaderText="Logo Hãng">
                <ControlStyle Height="50px" Width="50px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
            </asp:ImageField>
            <asp:CommandField ButtonType="Button" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" InsertText="Thêm" NewText="Thêm" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật">
            <ControlStyle BackColor="#CC0000" BorderColor="Black" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" ForeColor="#FFFFCC" />
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerSettings FirstPageImageUrl="~/Admin/images/icon/first.png" LastPageImageUrl="~/Admin/images/icon/last.png" Mode="NextPreviousFirstLast" NextPageImageUrl="~/Admin/images/icon/next.png" PreviousPageImageUrl="~/Admin/images/icon/previous.png" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <div>
        </div>


</asp:Content>

