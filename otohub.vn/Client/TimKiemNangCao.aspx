<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client_MasterPage.master" AutoEventWireup="true" CodeFile="TimKiemNangCao.aspx.cs" Inherits="Client_TimKiemNangCao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        Tìm kiếm nâng cao</h1>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AppendDataBoundItems="True" DataSourceID="sqlDsXuatxu" DataTextField="xuatXu" DataValueField="xuatXu">
    </asp:RadioButtonList>
    <asp:SqlDataSource ID="sqlDsXuatxu" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT DISTINCT [xuatXu] FROM [OTO]"></asp:SqlDataSource>
    <table class="auto-style4">
        <tr>
            <td>
                <asp:DropDownList ID="ddlHang" runat="server" DataSourceID="sqlDsHang" DataTextField="tenHang" DataValueField="tenHang" AppendDataBoundItems="True">
                    <asp:ListItem Value="Default">--Chọn hãng--</asp:ListItem>
                    <asp:ListItem> </asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="sqlDsHang" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT DISTINCT [tenHang] FROM [OTO]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DropDownList ID="ddlKieuDang" runat="server" AppendDataBoundItems="True" DataSourceID="sqlDsKieuDang" DataTextField="kieuDang" DataValueField="kieuDang">
                    <asp:ListItem Value="Default">--Chọn kiểu dáng--</asp:ListItem>
                    <asp:ListItem> </asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="sqlDsKieuDang" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT DISTINCT [kieuDang] FROM [OTO]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DropDownList ID="ddlSoCho" runat="server" DataSourceID="sqlDsSoCho" DataTextField="soCho" DataValueField="soCho">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sqlDsSoCho" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT DISTINCT [soCho] FROM [OTO]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DropDownList ID="ddlHopSo" runat="server" AppendDataBoundItems="True" DataSourceID="sqlDsHopSo" DataTextField="loaiHopSo" DataValueField="loaiHopSo">
                    <asp:ListItem Value="Default">--Chọn hộp số--</asp:ListItem>
                    <asp:ListItem> </asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="sqlDsHopSo" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT DISTINCT [loaiHopSo] FROM [OTO]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DropDownList ID="ddlNhienLieu" runat="server" AppendDataBoundItems="True" DataSourceID="sqlDsNhienLieu" DataTextField="nhienLieu" DataValueField="nhienLieu">
                    <asp:ListItem Value="Default">--Chọn nhiên liệu--</asp:ListItem>
                    <asp:ListItem> </asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="sqlDsNhienLieu" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT DISTINCT [nhienLieu] FROM [OTO]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DropDownList ID="ddlMauSac" runat="server" AppendDataBoundItems="True" DataSourceID="sqlDsMauSac" DataTextField="mauSac" DataValueField="mauSac">
                    <asp:ListItem Value="Default">--Chọn màu sắc--</asp:ListItem>
                    <asp:ListItem> </asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="sqlDsMauSac" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT DISTINCT [mauSac] FROM [OTO]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DropDownList ID="ddlSoCua" runat="server" DataSourceID="sqlDsSoCua" DataTextField="soCua" DataValueField="soCua">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sqlDsSoCua" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT DISTINCT [soCua] FROM [OTO]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:Panel ID="panelAdSearch" runat="server">
        <asp:Button ID="btnTimKiem" runat="server" OnClick="btnTimKiem_Click" Text="Tìm kiếm" />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="sqlDsAdvanceSearch" DataKeyNames="Mã xe">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="Mã_xeLabel" runat="server" Text='<%# Eval("[Mã xe]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Tên_salonLabel" runat="server" Text='<%# Eval("[Tên salon]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Mã_salonLabel" runat="server" Text='<%# Eval("[Mã salon]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Tên_ôtôLabel" runat="server" Text='<%# Eval("[Tên ôtô]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Tên_hãngLabel" runat="server" Text='<%# Eval("[Tên hãng]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Công_suấtLabel" runat="server" Text='<%# Eval("[Công suất]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="GiáLabel" runat="server" Text='<%# Eval("Giá") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Mã_hãng_xeLabel" runat="server" Text='<%# Eval("[Mã hãng xe]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ẢnhLabel" runat="server" Text='<%# Eval("Ảnh") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Kiểu_dángLabel" runat="server" Text='<%# Eval("[Kiểu dáng]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Xuất_xứLabel" runat="server" Text='<%# Eval("[Xuất xứ]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Nhiên_liệuLabel" runat="server" Text='<%# Eval("[Nhiên liệu]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Loại_hộp_sốLabel" runat="server" Text='<%# Eval("[Loại hộp số]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Màu_sắcLabel" runat="server" Text='<%# Eval("[Màu sắc]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Số_cửaLabel" runat="server" Text='<%# Eval("[Số cửa]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Số_chỗLabel" runat="server" Text='<%# Eval("[Số chỗ]") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="Mã_xeLabel1" runat="server" Text='<%# Eval("[Mã xe]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Tên_salonTextBox" runat="server" Text='<%# Bind("[Tên salon]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Mã_salonTextBox" runat="server" Text='<%# Bind("[Mã salon]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Tên_ôtôTextBox" runat="server" Text='<%# Bind("[Tên ôtô]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Tên_hãngTextBox" runat="server" Text='<%# Bind("[Tên hãng]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Công_suấtTextBox" runat="server" Text='<%# Bind("[Công suất]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="GiáTextBox" runat="server" Text='<%# Bind("Giá") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Mã_hãng_xeTextBox" runat="server" Text='<%# Bind("[Mã hãng xe]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ẢnhTextBox" runat="server" Text='<%# Bind("Ảnh") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Kiểu_dángTextBox" runat="server" Text='<%# Bind("[Kiểu dáng]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Xuất_xứTextBox" runat="server" Text='<%# Bind("[Xuất xứ]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Nhiên_liệuTextBox" runat="server" Text='<%# Bind("[Nhiên liệu]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Loại_hộp_sốTextBox" runat="server" Text='<%# Bind("[Loại hộp số]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Màu_sắcTextBox" runat="server" Text='<%# Bind("[Màu sắc]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Số_cửaTextBox" runat="server" Text='<%# Bind("[Số cửa]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Số_chỗTextBox" runat="server" Text='<%# Bind("[Số chỗ]") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="Mã_xeTextBox" runat="server" Text='<%# Bind("[Mã xe]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Tên_salonTextBox" runat="server" Text='<%# Bind("[Tên salon]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Mã_salonTextBox" runat="server" Text='<%# Bind("[Mã salon]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Tên_ôtôTextBox" runat="server" Text='<%# Bind("[Tên ôtô]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Tên_hãngTextBox" runat="server" Text='<%# Bind("[Tên hãng]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Công_suấtTextBox" runat="server" Text='<%# Bind("[Công suất]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="GiáTextBox" runat="server" Text='<%# Bind("Giá") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Mã_hãng_xeTextBox" runat="server" Text='<%# Bind("[Mã hãng xe]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ẢnhTextBox" runat="server" Text='<%# Bind("Ảnh") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Kiểu_dángTextBox" runat="server" Text='<%# Bind("[Kiểu dáng]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Xuất_xứTextBox" runat="server" Text='<%# Bind("[Xuất xứ]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Nhiên_liệuTextBox" runat="server" Text='<%# Bind("[Nhiên liệu]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Loại_hộp_sốTextBox" runat="server" Text='<%# Bind("[Loại hộp số]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Màu_sắcTextBox" runat="server" Text='<%# Bind("[Màu sắc]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Số_cửaTextBox" runat="server" Text='<%# Bind("[Số cửa]") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Số_chỗTextBox" runat="server" Text='<%# Bind("[Số chỗ]") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="Mã_xeLabel" runat="server" Text='<%# Eval("[Mã xe]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Tên_salonLabel" runat="server" Text='<%# Eval("[Tên salon]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Mã_salonLabel" runat="server" Text='<%# Eval("[Mã salon]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Tên_ôtôLabel" runat="server" Text='<%# Eval("[Tên ôtô]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Tên_hãngLabel" runat="server" Text='<%# Eval("[Tên hãng]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Công_suấtLabel" runat="server" Text='<%# Eval("[Công suất]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="GiáLabel" runat="server" Text='<%# Eval("Giá") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Mã_hãng_xeLabel" runat="server" Text='<%# Eval("[Mã hãng xe]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ẢnhLabel" runat="server" Text='<%# Eval("Ảnh") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Kiểu_dángLabel" runat="server" Text='<%# Eval("[Kiểu dáng]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Xuất_xứLabel" runat="server" Text='<%# Eval("[Xuất xứ]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Nhiên_liệuLabel" runat="server" Text='<%# Eval("[Nhiên liệu]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Loại_hộp_sốLabel" runat="server" Text='<%# Eval("[Loại hộp số]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Màu_sắcLabel" runat="server" Text='<%# Eval("[Màu sắc]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Số_cửaLabel" runat="server" Text='<%# Eval("[Số cửa]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Số_chỗLabel" runat="server" Text='<%# Eval("[Số chỗ]") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">Mã xe</th>
                                    <th runat="server">Tên salon</th>
                                    <th runat="server">Mã salon</th>
                                    <th runat="server">Tên ôtô</th>
                                    <th runat="server">Tên hãng</th>
                                    <th runat="server">Công suất</th>
                                    <th runat="server">Giá</th>
                                    <th runat="server">Mã hãng xe</th>
                                    <th runat="server">Ảnh</th>
                                    <th runat="server">Kiểu dáng</th>
                                    <th runat="server">Xuất xứ</th>
                                    <th runat="server">Nhiên liệu</th>
                                    <th runat="server">Loại hộp số</th>
                                    <th runat="server">Màu sắc</th>
                                    <th runat="server">Số cửa</th>
                                    <th runat="server">Số chỗ</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="Mã_xeLabel" runat="server" Text='<%# Eval("[Mã xe]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Tên_salonLabel" runat="server" Text='<%# Eval("[Tên salon]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Mã_salonLabel" runat="server" Text='<%# Eval("[Mã salon]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Tên_ôtôLabel" runat="server" Text='<%# Eval("[Tên ôtô]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Tên_hãngLabel" runat="server" Text='<%# Eval("[Tên hãng]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Công_suấtLabel" runat="server" Text='<%# Eval("[Công suất]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="GiáLabel" runat="server" Text='<%# Eval("Giá") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Mã_hãng_xeLabel" runat="server" Text='<%# Eval("[Mã hãng xe]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ẢnhLabel" runat="server" Text='<%# Eval("Ảnh") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Kiểu_dángLabel" runat="server" Text='<%# Eval("[Kiểu dáng]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Xuất_xứLabel" runat="server" Text='<%# Eval("[Xuất xứ]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Nhiên_liệuLabel" runat="server" Text='<%# Eval("[Nhiên liệu]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Loại_hộp_sốLabel" runat="server" Text='<%# Eval("[Loại hộp số]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Màu_sắcLabel" runat="server" Text='<%# Eval("[Màu sắc]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Số_cửaLabel" runat="server" Text='<%# Eval("[Số cửa]") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Số_chỗLabel" runat="server" Text='<%# Eval("[Số chỗ]") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="sqlDsAdvanceSearch" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="spAdvanceSearchCars" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlHang" Name="tenHang" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlKieuDang" Name="kieuDang" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlHopSo" Name="HopSo" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlNhienLieu" Name="nhienLieu" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="RadioButtonList1" Name="xuatXu" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlSoCho" Name="soCho" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="ddlSoCua" Name="soCua" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="ddlMauSac" Name="mauSac" PropertyName="SelectedValue" Type="String" />
          
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    </asp:Content>

