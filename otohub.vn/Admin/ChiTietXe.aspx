<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietXe.aspx.cs" Inherits="ChiTietXe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="sqlDsChiTietXe" runat="server" ConnectionString="<%$ ConnectionStrings:otohubConnectionString %>" SelectCommand="SELECT * FROM [OTO] WHERE ([maXe] = @maXe)" DeleteCommand="DELETE FROM [OTO] WHERE [maXe] = @maXe AND [maHangXe] = @maHangXe AND [maThanhVien] = @maThanhVien" InsertCommand="INSERT INTO [OTO] ([maXe], [maHangXe], [maThanhVien], [tenXe], [congSuat], [gia], [kieuDang], [xuatXu], [nhienLieu], [loaiHopSo], [mauSac], [soCua], [soCho], [ngayDangBan], [anh], [daBan]) VALUES (@maXe, @maHangXe, @maThanhVien, @tenXe, @congSuat, @gia, @kieuDang, @xuatXu, @nhienLieu, @loaiHopSo, @mauSac, @soCua, @soCho, @ngayDangBan, @anh, @daBan)" UpdateCommand="UPDATE [OTO] SET [tenXe] = @tenXe, [congSuat] = @congSuat, [gia] = @gia, [kieuDang] = @kieuDang, [xuatXu] = @xuatXu, [nhienLieu] = @nhienLieu, [loaiHopSo] = @loaiHopSo, [mauSac] = @mauSac, [soCua] = @soCua, [soCho] = @soCho, [ngayDangBan] = @ngayDangBan, [anh] = @anh, [daBan] = @daBan WHERE [maXe] = @maXe AND [maHangXe] = @maHangXe AND [maThanhVien] = @maThanhVien">
        <DeleteParameters>
            <asp:Parameter Name="maXe" Type="String" />
            <asp:Parameter Name="maHangXe" Type="String" />
            <asp:Parameter Name="maThanhVien" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="maXe" Type="String" />
            <asp:Parameter Name="maHangXe" Type="String" />
            <asp:Parameter Name="maThanhVien" Type="String" />
            <asp:Parameter Name="tenXe" Type="String" />
            <asp:Parameter Name="congSuat" Type="Int32" />
            <asp:Parameter Name="gia" Type="Int32" />
            <asp:Parameter Name="kieuDang" Type="String" />
            <asp:Parameter Name="xuatXu" Type="String" />
            <asp:Parameter Name="nhienLieu" Type="String" />
            <asp:Parameter Name="loaiHopSo" Type="String" />
            <asp:Parameter Name="mauSac" Type="String" />
            <asp:Parameter Name="soCua" Type="Int32" />
            <asp:Parameter Name="soCho" Type="Int32" />
            <asp:Parameter DbType="Date" Name="ngayDangBan" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="daBan" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="maXe" QueryStringField="maXe" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="tenXe" Type="String" />
            <asp:Parameter Name="congSuat" Type="Int32" />
            <asp:Parameter Name="gia" Type="Int32" />
            <asp:Parameter Name="kieuDang" Type="String" />
            <asp:Parameter Name="xuatXu" Type="String" />
            <asp:Parameter Name="nhienLieu" Type="String" />
            <asp:Parameter Name="loaiHopSo" Type="String" />
            <asp:Parameter Name="mauSac" Type="String" />
            <asp:Parameter Name="soCua" Type="Int32" />
            <asp:Parameter Name="soCho" Type="Int32" />
            <asp:Parameter DbType="Date" Name="ngayDangBan" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="daBan" Type="Boolean" />
            <asp:Parameter Name="maXe" Type="String" />
            <asp:Parameter Name="maHangXe" Type="String" />
            <asp:Parameter Name="maThanhVien" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="maXe,maHangXe,maThanhVien" DataSourceID="sqlDsChiTietXe" Width="601px" HorizontalAlign="Center">
        <EditItemTemplate>
            &nbsp;<table align="center" cellpadding="2" style="width: 100%; border-collapse: collapse; border: 2px solid #CC0000; background-color: #FFFFCC" border="1">
                <tr>
                    <td style="height: 20px; width: 288px;">Mã xe</td>
                    <td style="height: 20px; width: 329px;">
                        <asp:Label ID="maXeLabel1" runat="server" Text='<%# Eval("maXe") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 288px">Mã hãng</td>
                    <td style="width: 329px">
                        <asp:Label ID="maHangXeLabel1" runat="server" Text='<%# Eval("maHangXe") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 288px">Mã người bán</td>
                    <td style="width: 329px">
                        <asp:Label ID="maThanhVienLabel1" runat="server" Text='<%# Eval("maThanhVien") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 288px">Tên xe</td>
                    <td style="width: 329px">
                        <asp:TextBox ID="tenXeTextBox" runat="server" Text='<%# Bind("tenXe") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 288px">Công suất</td>
                    <td style="width: 329px">
                        <asp:TextBox ID="congSuatTextBox" runat="server" Text='<%# Bind("congSuat") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 288px">Giá</td>
                    <td style="width: 329px">
                        <asp:TextBox ID="giaTextBox" runat="server" Text='<%# Bind("gia") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 288px">Kiểu dáng</td>
                    <td style="width: 329px">
                        <asp:TextBox ID="kieuDangTextBox" runat="server" Text='<%# Bind("kieuDang") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 288px">Xuất xứ</td>
                    <td style="width: 329px">
                        <asp:TextBox ID="xuatXuTextBox" runat="server" Text='<%# Bind("xuatXu") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 288px">Nhiên liệu</td>
                    <td style="width: 329px">
                        <asp:TextBox ID="nhienLieuTextBox" runat="server" Text='<%# Bind("nhienLieu") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 288px">Loại hộp số</td>
                    <td style="width: 329px">
                        <asp:TextBox ID="loaiHopSoTextBox" runat="server" Text='<%# Bind("loaiHopSo") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 288px">Màu sắc</td>
                    <td style="width: 329px">
                        <asp:TextBox ID="mauSacTextBox" runat="server" Text='<%# Bind("mauSac") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 288px">Số cửa</td>
                    <td style="width: 329px">
                        <asp:TextBox ID="soCuaTextBox" runat="server" Text='<%# Bind("soCua") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 288px">Số chỗ</td>
                    <td style="width: 329px">
                        <asp:TextBox ID="soChoTextBox" runat="server" Text='<%# Bind("soCho") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="height: 28px; width: 288px;">Ngày đăng bán</td>
                    <td style="height: 28px; width: 329px;">
                        <asp:TextBox ID="ngayDangBanTextBox" runat="server" Text='<%# Bind("ngayDangBan") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 288px">Ảnh</td>
                    <td style="width: 329px">
                        <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh")%>'  />
                        <br />
                        <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# Eval("anh", "~/Admin/images/Oto/{0}") %>' Width="200px" AutoPostBack="True" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 288px">Đã bán</td>
                    <td style="width: 329px">
                        <asp:CheckBox ID="daBanCheckBox" runat="server" Checked='<%# Bind("daBan") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="height: 55px; width: 288px;">
                        <asp:LinkButton ID="UpdateButton" runat="server" BackColor="Red" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CausesValidation="True" CommandName="Update" ForeColor="#FFFF99" Text="Cập nhật" />
                    </td>
                    <td style="height: 55px; width: 329px;">
                        <asp:LinkButton ID="UpdateCancelButton" runat="server" BackColor="Red" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CausesValidation="False" CommandName="Cancel" ForeColor="#FFFF99" Text="Hủy" width="66px" />
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;
        </EditItemTemplate>
        <InsertItemTemplate>
            maXe:
            <asp:TextBox ID="maXeTextBox" runat="server" Text='<%# Bind("maXe") %>' />
            <br />
            maHangXe:
            <asp:TextBox ID="maHangXeTextBox" runat="server" Text='<%# Bind("maHangXe") %>' />
            <br />
            maThanhVien:
            <asp:TextBox ID="maThanhVienTextBox" runat="server" Text='<%# Bind("maThanhVien") %>' />
            <br />
            tenXe:
            <asp:TextBox ID="tenXeTextBox" runat="server" Text='<%# Bind("tenXe") %>' />
            <br />
            congSuat:
            <asp:TextBox ID="congSuatTextBox" runat="server" Text='<%# Bind("congSuat") %>' />
            <br />
            gia:
            <asp:TextBox ID="giaTextBox" runat="server" Text='<%# Bind("gia") %>' />
            <br />
            kieuDang:
            <asp:TextBox ID="kieuDangTextBox" runat="server" Text='<%# Bind("kieuDang") %>' />
            <br />
            xuatXu:
            <asp:TextBox ID="xuatXuTextBox" runat="server" Text='<%# Bind("xuatXu") %>' />
            <br />
            nhienLieu:
            <asp:TextBox ID="nhienLieuTextBox" runat="server" Text='<%# Bind("nhienLieu") %>' />
            <br />
            loaiHopSo:
            <asp:TextBox ID="loaiHopSoTextBox" runat="server" Text='<%# Bind("loaiHopSo") %>' />
            <br />
            mauSac:
            <asp:TextBox ID="mauSacTextBox" runat="server" Text='<%# Bind("mauSac") %>' />
            <br />
            soCua:
            <asp:TextBox ID="soCuaTextBox" runat="server" Text='<%# Bind("soCua") %>' />
            <br />
            soCho:
            <asp:TextBox ID="soChoTextBox" runat="server" Text='<%# Bind("soCho") %>' />
            <br />
            ngayDangBan:
            <asp:TextBox ID="ngayDangBanTextBox" runat="server" Text='<%# Bind("ngayDangBan") %>' />
            <br />
            anh:
            <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
            <br />
            daBan:
            <asp:CheckBox ID="daBanCheckBox" runat="server" Checked='<%# Bind("daBan") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table align="center" cellpadding="2" style="border-style: solid; border-collapse: collapse; background-color: #FFFFCC" border="1" class="nav-justified">
                <tr>
                    <td style="height: 20px; width: 292px;">Mã xe</td>
                    <td style="height: 20px; width: 283px;">
                        <asp:Label ID="maXeLabel" runat="server" Text='<%# Eval("maXe") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 292px">Mã hãng</td>
                    <td style="width: 283px">
                        <asp:Label ID="maHangXeLabel" runat="server" Text='<%# Eval("maHangXe") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 292px">Mã người bán</td>
                    <td style="width: 283px">
                        <asp:Label ID="maThanhVienLabel" runat="server" Text='<%# Eval("maThanhVien") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 292px">Tên xe</td>
                    <td style="width: 283px">
                        <asp:Label ID="tenXeLabel" runat="server" Text='<%# Bind("tenXe") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 292px">Công suất</td>
                    <td style="width: 283px">
                        <asp:Label ID="congSuatLabel" runat="server" Text='<%# Bind("congSuat") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 292px">Giá</td>
                    <td style="width: 283px">
                        <asp:Label ID="giaLabel" runat="server" Text='<%# Bind("gia") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 292px">Kiểu dáng</td>
                    <td style="width: 283px">
                        <asp:Label ID="kieuDangLabel" runat="server" Text='<%# Bind("kieuDang") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 292px">Xuất xứ</td>
                    <td style="width: 283px">
                        <asp:Label ID="xuatXuLabel" runat="server" Text='<%# Bind("xuatXu") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 292px">Nhiên liệu</td>
                    <td style="width: 283px">
                        <asp:Label ID="nhienLieuLabel" runat="server" Text='<%# Bind("nhienLieu") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 292px">Loại hộp số</td>
                    <td style="width: 283px">
                        <asp:Label ID="loaiHopSoLabel" runat="server" Text='<%# Bind("loaiHopSo") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 292px">Màu sắc</td>
                    <td style="width: 283px">
                        <asp:Label ID="mauSacLabel" runat="server" Text='<%# Bind("mauSac") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 292px">Số cửa</td>
                    <td style="width: 283px">
                        <asp:Label ID="soCuaLabel" runat="server" Text='<%# Bind("soCua") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 292px">Số chỗ</td>
                    <td style="width: 283px">
                        <asp:Label ID="soChoLabel" runat="server" Text='<%# Bind("soCho") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="height: 28px; width: 292px;">Ngày đăng bán</td>
                    <td style="height: 28px; width: 283px;">
                        <asp:Label ID="ngayDangBanLabel" runat="server" Text='<%# Bind("ngayDangBan") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 292px">Ảnh</td>
                    <td style="width: 283px">
                        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("anh", "~/Admin/images/Oto/{0}") %>' Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 292px">Đã bán</td>
                    <td style="width: 283px">
                        <asp:CheckBox ID="daBanCheckBox" runat="server" Checked='<%# Bind("daBan") %>' Enabled="false" />
                    </td>
                </tr>
                <tr>
                    <td style="height: 55px; width: 292px;">
                        <asp:LinkButton ID="EditButton" runat="server" BackColor="Red" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CausesValidation="False" CommandName="Edit" ForeColor="#FFFF66" Text="Sửa" width="68px" />
                    </td>
                    <td style="height: 55px; text-align: center; width: 283px;" class="text-left">
                        <asp:LinkButton ID="DeleteButton" runat="server" BackColor="Red" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CausesValidation="False" CommandName="Delete" ForeColor="#FFFF99" Text="Xóa" width="68px" style="margin-left: 0px" />
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" BackColor="Red" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" ForeColor="#FFFF99" PostBackUrl="~/Admin/QL_OTo.aspx" style="margin-left: 0px; margin-top: 5px" Text="Trở về" />
            <br />
            &nbsp;&nbsp;
        </ItemTemplate>
    </asp:FormView>

</asp:Content>

