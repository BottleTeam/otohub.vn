<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietThanhVien.aspx.cs" Inherits="ChiTietThanhVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sqlDsChiTietTV" runat="server" ConnectionString="<%$ ConnectionStrings:otohubConnectionString %>" SelectCommand="SELECT * FROM [THANHVIEN] WHERE ([maThanhVien] = @maThanhVien)" DeleteCommand="DELETE FROM [THANHVIEN] WHERE [maThanhVien] = @maThanhVien" InsertCommand="INSERT INTO [THANHVIEN] ([maThanhVien], [tenDangNhap], [matKhau], [loaiSalon], [tenThanhVien], [email], [soDienThoai], [quanHuyen], [tinhThanhPho], [diaChi], [anhDaiDien], [anhTongQuan]) VALUES (@maThanhVien, @tenDangNhap, @matKhau, @loaiSalon, @tenThanhVien, @email, @soDienThoai, @quanHuyen, @tinhThanhPho, @diaChi, @anhDaiDien, @anhTongQuan)" UpdateCommand="UPDATE [THANHVIEN] SET [tenDangNhap] = @tenDangNhap, [matKhau] = @matKhau, [loaiSalon] = @loaiSalon, [tenThanhVien] = @tenThanhVien, [email] = @email, [soDienThoai] = @soDienThoai, [quanHuyen] = @quanHuyen, [tinhThanhPho] = @tinhThanhPho, [diaChi] = @diaChi, [anhDaiDien] = @anhDaiDien, [anhTongQuan] = @anhTongQuan WHERE [maThanhVien] = @maThanhVien">
        <DeleteParameters>
            <asp:Parameter Name="maThanhVien" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="maThanhVien" Type="String" />
            <asp:Parameter Name="tenDangNhap" Type="String" />
            <asp:Parameter Name="matKhau" Type="String" />
            <asp:Parameter Name="loaiSalon" Type="String" />
            <asp:Parameter Name="tenThanhVien" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="soDienThoai" Type="String" />
            <asp:Parameter Name="quanHuyen" Type="String" />
            <asp:Parameter Name="tinhThanhPho" Type="String" />
            <asp:Parameter Name="diaChi" Type="String" />
            <asp:Parameter Name="anhDaiDien" Type="String" />
            <asp:Parameter Name="anhTongQuan" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="maThanhVien" QueryStringField="maThanhVien" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="tenDangNhap" Type="String" />
            <asp:Parameter Name="matKhau" Type="String" />
            <asp:Parameter Name="loaiSalon" Type="String" />
            <asp:Parameter Name="tenThanhVien" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="soDienThoai" Type="String" />
            <asp:Parameter Name="quanHuyen" Type="String" />
            <asp:Parameter Name="tinhThanhPho" Type="String" />
            <asp:Parameter Name="diaChi" Type="String" />
            <asp:Parameter Name="anhDaiDien" Type="String" />
            <asp:Parameter Name="anhTongQuan" Type="String" />
            <asp:Parameter Name="maThanhVien" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h2>Chi tiết thành viên</h2>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="maThanhVien" DataSourceID="sqlDsChiTietTV" Height="50px" HorizontalAlign="Center" Width="772px" style="color: #CC0000; font-weight: 700; text-align: center; border: 5px double #000000; background-color: #FFFFCC">
        <Fields>
            <asp:BoundField DataField="maThanhVien" HeaderText="Mã thành viên" ReadOnly="True" SortExpression="maThanhVien" >
            <HeaderStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="tenDangNhap" HeaderText="Tên đăng nhập" SortExpression="tenDangNhap" >
            <ControlStyle Width="70%" />
            <HeaderStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="matKhau" HeaderText="Mật khẩu" SortExpression="matKhau" >
            <HeaderStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="loaiSalon" HeaderText="Loại tài khoản" SortExpression="loaiSalon" >
            <HeaderStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="tenThanhVien" HeaderText="Tên thành viên" SortExpression="tenThanhVien" >
            <ControlStyle Width="70%" />
            <HeaderStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Địa chỉ Email" SortExpression="email" >
            <ControlStyle Width="70%" />
            <HeaderStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="soDienThoai" HeaderText="Số điện thoại" SortExpression="soDienThoai" >
            <HeaderStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="diaChi" HeaderText="Địa chỉ" SortExpression="diaChi" >
            <ControlStyle Width="70%" />
            <HeaderStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="tinhThanhPho" HeaderText="Tỉnh/Thành phố" SortExpression="tinhThanhPho" >
            <HeaderStyle Width="150px" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="anhDaiDien" HeaderText="Ảnh đại diện" DataImageUrlFormatString="~/Admin/images/ThanhVien/{0}">
                <HeaderStyle Width="150px" />
                <ItemStyle Height="100px" Width="100px" HorizontalAlign="Center" />
            </asp:ImageField>
            <asp:ImageField DataImageUrlField="anhTongQuan" HeaderText="Ảnh tổng quan" DataImageUrlFormatString="~/Admin/images/ThanhVien/{0}">
                <HeaderStyle Width="150px" />
                <ItemStyle Height="200px" Width="500px" />
            </asp:ImageField>
            <asp:CommandField ButtonType="Button" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" InsertText="Thêm" NewText="Thêm" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật">
            <ControlStyle BackColor="Red" BorderColor="Red" BorderStyle="Solid" BorderWidth="2px" ForeColor="#FFFF99" Font-Bold="True" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
</asp:Content>

