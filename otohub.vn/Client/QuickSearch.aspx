<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client_MasterPage.master" AutoEventWireup="true" CodeFile="QuickSearch.aspx.cs" Inherits="Client_QuickSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 881px;
        }
        .auto-style6 {}
        .auto-style7 {
            width: 80px;
        }
        .auto-style8 {
            width: 71px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Mã xe" DataSourceID="SqlDsQuickSearch" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color: #FAFAD2; color: #284775;">Mã xe:
                <asp:Label ID="Mã_xeLabel" runat="server" Text='<%# Eval("[Mã xe]") %>' />
                <br />
                Tên salon:
                <asp:Label ID="Tên_salonLabel" runat="server" Text='<%# Eval("[Tên salon]") %>' />
                <br />
                Mã salon:
                <asp:Label ID="Mã_salonLabel" runat="server" Text='<%# Eval("[Mã salon]") %>' />
                <br />
                Tên ôtô:
                <asp:Label ID="Tên_ôtôLabel" runat="server" Text='<%# Eval("[Tên ôtô]") %>' />
                <br />
                Tên hãng:
                <asp:Label ID="Tên_hãngLabel" runat="server" Text='<%# Eval("[Tên hãng]") %>' />
                <br />
                Công suất:
                <asp:Label ID="Công_suấtLabel" runat="server" Text='<%# Eval("[Công suất]") %>' />
                <br />
                Giá:
                <asp:Label ID="GiáLabel" runat="server" Text='<%# Eval("Giá") %>' />
                <br />
                Mã hãng xe:
                <asp:Label ID="Mã_hãng_xeLabel" runat="server" Text='<%# Eval("[Mã hãng xe]") %>' />
                <br />
                Ảnh:
                <asp:Label ID="ẢnhLabel" runat="server" Text='<%# Eval("Ảnh") %>' />
                <br />
                Kiểu dáng:
                <asp:Label ID="Kiểu_dángLabel" runat="server" Text='<%# Eval("[Kiểu dáng]") %>' />
                <br />
                Xuất xứ:
                <asp:Label ID="Xuất_xứLabel" runat="server" Text='<%# Eval("[Xuất xứ]") %>' />
                <br />
                Nhiên liệu:
                <asp:Label ID="Nhiên_liệuLabel" runat="server" Text='<%# Eval("[Nhiên liệu]") %>' />
                <br />
                Loại hộp số:
                <asp:Label ID="Loại_hộp_sốLabel" runat="server" Text='<%# Eval("[Loại hộp số]") %>' />
                <br />
                Màu sắc:
                <asp:Label ID="Màu_sắcLabel" runat="server" Text='<%# Eval("[Màu sắc]") %>' />
                <br />
                Số cửa:
                <asp:Label ID="Số_cửaLabel" runat="server" Text='<%# Eval("[Số cửa]") %>' />
                <br />
                Số chỗ:
                <asp:Label ID="Số_chỗLabel" runat="server" Text='<%# Eval("[Số chỗ]") %>' />
                <br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color: #FFCC66; color: #000080;">Mã xe:
                <asp:Label ID="Mã_xeLabel1" runat="server" Text='<%# Eval("[Mã xe]") %>' />
                <br />
                Tên salon:
                <asp:TextBox ID="Tên_salonTextBox" runat="server" Text='<%# Bind("[Tên salon]") %>' />
                <br />
                Mã salon:
                <asp:TextBox ID="Mã_salonTextBox" runat="server" Text='<%# Bind("[Mã salon]") %>' />
                <br />
                Tên ôtô:
                <asp:TextBox ID="Tên_ôtôTextBox" runat="server" Text='<%# Bind("[Tên ôtô]") %>' />
                <br />
                Tên hãng:
                <asp:TextBox ID="Tên_hãngTextBox" runat="server" Text='<%# Bind("[Tên hãng]") %>' />
                <br />
                Công suất:
                <asp:TextBox ID="Công_suấtTextBox" runat="server" Text='<%# Bind("[Công suất]") %>' />
                <br />
                Giá:
                <asp:TextBox ID="GiáTextBox" runat="server" Text='<%# Bind("Giá") %>' />
                <br />
                Mã hãng xe:
                <asp:TextBox ID="Mã_hãng_xeTextBox" runat="server" Text='<%# Bind("[Mã hãng xe]") %>' />
                <br />
                Ảnh:
                <asp:TextBox ID="ẢnhTextBox" runat="server" Text='<%# Bind("Ảnh") %>' />
                <br />
                Kiểu dáng:
                <asp:TextBox ID="Kiểu_dángTextBox" runat="server" Text='<%# Bind("[Kiểu dáng]") %>' />
                <br />
                Xuất xứ:
                <asp:TextBox ID="Xuất_xứTextBox" runat="server" Text='<%# Bind("[Xuất xứ]") %>' />
                <br />
                Nhiên liệu:
                <asp:TextBox ID="Nhiên_liệuTextBox" runat="server" Text='<%# Bind("[Nhiên liệu]") %>' />
                <br />
                Loại hộp số:
                <asp:TextBox ID="Loại_hộp_sốTextBox" runat="server" Text='<%# Bind("[Loại hộp số]") %>' />
                <br />
                Màu sắc:
                <asp:TextBox ID="Màu_sắcTextBox" runat="server" Text='<%# Bind("[Màu sắc]") %>' />
                <br />
                Số cửa:
                <asp:TextBox ID="Số_cửaTextBox" runat="server" Text='<%# Bind("[Số cửa]") %>' />
                <br />
                Số chỗ:
                <asp:TextBox ID="Số_chỗTextBox" runat="server" Text='<%# Bind("[Số chỗ]") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">Mã xe:
                <asp:TextBox ID="Mã_xeTextBox" runat="server" Text='<%# Bind("[Mã xe]") %>' />
                <br />
                Tên salon:
                <asp:TextBox ID="Tên_salonTextBox" runat="server" Text='<%# Bind("[Tên salon]") %>' />
                <br />
                Mã salon:
                <asp:TextBox ID="Mã_salonTextBox" runat="server" Text='<%# Bind("[Mã salon]") %>' />
                <br />
                Tên ôtô:
                <asp:TextBox ID="Tên_ôtôTextBox" runat="server" Text='<%# Bind("[Tên ôtô]") %>' />
                <br />
                Tên hãng:
                <asp:TextBox ID="Tên_hãngTextBox" runat="server" Text='<%# Bind("[Tên hãng]") %>' />
                <br />
                Công suất:
                <asp:TextBox ID="Công_suấtTextBox" runat="server" Text='<%# Bind("[Công suất]") %>' />
                <br />
                Giá:
                <asp:TextBox ID="GiáTextBox" runat="server" Text='<%# Bind("Giá") %>' />
                <br />
                Mã hãng xe:
                <asp:TextBox ID="Mã_hãng_xeTextBox" runat="server" Text='<%# Bind("[Mã hãng xe]") %>' />
                <br />
                Ảnh:
                <asp:TextBox ID="ẢnhTextBox" runat="server" Text='<%# Bind("Ảnh") %>' />
                <br />
                Kiểu dáng:
                <asp:TextBox ID="Kiểu_dángTextBox" runat="server" Text='<%# Bind("[Kiểu dáng]") %>' />
                <br />
                Xuất xứ:
                <asp:TextBox ID="Xuất_xứTextBox" runat="server" Text='<%# Bind("[Xuất xứ]") %>' />
                <br />
                Nhiên liệu:
                <asp:TextBox ID="Nhiên_liệuTextBox" runat="server" Text='<%# Bind("[Nhiên liệu]") %>' />
                <br />
                Loại hộp số:
                <asp:TextBox ID="Loại_hộp_sốTextBox" runat="server" Text='<%# Bind("[Loại hộp số]") %>' />
                <br />
                Màu sắc:
                <asp:TextBox ID="Màu_sắcTextBox" runat="server" Text='<%# Bind("[Màu sắc]") %>' />
                <br />
                Số cửa:
                <asp:TextBox ID="Số_cửaTextBox" runat="server" Text='<%# Bind("[Số cửa]") %>' />
                <br />
                Số chỗ:
                <asp:TextBox ID="Số_chỗTextBox" runat="server" Text='<%# Bind("[Số chỗ]") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" class="auto-style5" style="background-color: #FFFBD6; color: #333333;">
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6" rowspan="4"></td>
                        <td class="auto-style8">Tên hãng:</td>
                        <td class="auto-style6">
                            <asp:Label ID="Tên_hãngLabel" runat="server" Text='<%# Eval("[Tên hãng]") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">Màu sắc:</td>
                        <td class="auto-style6">
                            <asp:Label ID="Màu_sắcLabel" runat="server" Text='<%# Eval("[Màu sắc]") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">Công suất:</td>
                        <td class="auto-style6">
                            <asp:Label ID="Công_suấtLabel" runat="server" Text='<%# Eval("[Công suất]") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Xuất xứ:</td>
                        <td>
                            <asp:Label ID="Xuất_xứLabel" runat="server" Text='<%# Eval("[Xuất xứ]") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">Số cửa:</td>
                        <td>
                            <asp:Label ID="Số_cửaLabel" runat="server" Text='<%# Eval("[Số cửa]") %>'></asp:Label>
                        </td>
                        <td>Nhiên liệu:</td>
                        <td>
                            <asp:Label ID="Nhiên_liệuLabel" runat="server" Text='<%# Eval("[Nhiên liệu]") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Kiểu dáng:</td>
                        <td>
                            <asp:Label ID="Kiểu_dángLabel" runat="server" Text='<%# Eval("[Kiểu dáng]") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">Số chỗ:</td>
                        <td>
                            <asp:Label ID="Số_chỗLabel" runat="server" Text='<%# Eval("[Số chỗ]") %>'></asp:Label>
                        </td>
                        <td>Loại hộp số:</td>
                        <td>
                            <asp:Label ID="Loại_hộp_sốLabel" runat="server" Text='<%# Eval("[Loại hộp số]") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Tên_ôtôLabel" runat="server" Text='<%# Eval("[Tên ôtô]") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td>Giá:</td>
                        <td>
                            <asp:Label ID="GiáLabel" runat="server" Text='<%# Eval("Giá") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color: #FFCC66; font-weight: bold;color: #000080;">Mã xe:
                <asp:Label ID="Mã_xeLabel" runat="server" Text='<%# Eval("[Mã xe]") %>' />
                <br />
                Tên salon:
                <asp:Label ID="Tên_salonLabel" runat="server" Text='<%# Eval("[Tên salon]") %>' />
                <br />
                Mã salon:
                <asp:Label ID="Mã_salonLabel" runat="server" Text='<%# Eval("[Mã salon]") %>' />
                <br />
                Tên ôtô:
                <asp:Label ID="Tên_ôtôLabel" runat="server" Text='<%# Eval("[Tên ôtô]") %>' />
                <br />
                Tên hãng:
                <asp:Label ID="Tên_hãngLabel" runat="server" Text='<%# Eval("[Tên hãng]") %>' />
                <br />
                Công suất:
                <asp:Label ID="Công_suấtLabel" runat="server" Text='<%# Eval("[Công suất]") %>' />
                <br />
                Giá:
                <asp:Label ID="GiáLabel" runat="server" Text='<%# Eval("Giá") %>' />
                <br />
                Mã hãng xe:
                <asp:Label ID="Mã_hãng_xeLabel" runat="server" Text='<%# Eval("[Mã hãng xe]") %>' />
                <br />
                Ảnh:
                <asp:Label ID="ẢnhLabel" runat="server" Text='<%# Eval("Ảnh") %>' />
                <br />
                Kiểu dáng:
                <asp:Label ID="Kiểu_dángLabel" runat="server" Text='<%# Eval("[Kiểu dáng]") %>' />
                <br />
                Xuất xứ:
                <asp:Label ID="Xuất_xứLabel" runat="server" Text='<%# Eval("[Xuất xứ]") %>' />
                <br />
                Nhiên liệu:
                <asp:Label ID="Nhiên_liệuLabel" runat="server" Text='<%# Eval("[Nhiên liệu]") %>' />
                <br />
                Loại hộp số:
                <asp:Label ID="Loại_hộp_sốLabel" runat="server" Text='<%# Eval("[Loại hộp số]") %>' />
                <br />
                Màu sắc:
                <asp:Label ID="Màu_sắcLabel" runat="server" Text='<%# Eval("[Màu sắc]") %>' />
                <br />
                Số cửa:
                <asp:Label ID="Số_cửaLabel" runat="server" Text='<%# Eval("[Số cửa]") %>' />
                <br />
                Số chỗ:
                <asp:Label ID="Số_chỗLabel" runat="server" Text='<%# Eval("[Số chỗ]") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDsQuickSearch" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="spSearchCars" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="valueSearch" Name="SearchTerm" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="valueSearch" runat="server" Text="Label" Visible="False"></asp:Label>
</asp:Content>

