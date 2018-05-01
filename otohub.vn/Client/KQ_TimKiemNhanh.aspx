<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client_MasterPage.master" AutoEventWireup="true" CodeFile="KQ_TimKiemNhanh.aspx.cs" Inherits="Client_TimKiemNhanh" %>
<%@ MasterType VirtualPath="~/Client/Client_MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Mã xe" GroupItemCount="3">
        <AlternatingItemTemplate>
           <td runat="server" style="">
                <table class="auto-style4">
                    <tr>
                        <td colspan="2">
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="200px" ImageUrl='<%# Eval("Ảnh", "~/imageoto/{0}") %>' Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <h3><asp:Label ID="Label1" runat="server" Text='<%# Eval("[Tên ôtô]") %>'></asp:Label></h3>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>
                            <h4><asp:Label ID="Label2" runat="server" Text='<%# Eval("Giá") %>'></asp:Label></h4>
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">Mã xe:
                <asp:Label ID="Mã_xeLabel1" runat="server" Text='<%# Eval("[Mã xe]") %>' />
                <br />Tên salon:
                <asp:TextBox ID="Tên_salonTextBox" runat="server" Text='<%# Bind("[Tên salon]") %>' />
                <br />Mã salon:
                <asp:TextBox ID="Mã_salonTextBox" runat="server" Text='<%# Bind("[Mã salon]") %>' />
                <br />Tên ôtô:
                <asp:TextBox ID="Tên_ôtôTextBox" runat="server" Text='<%# Bind("[Tên ôtô]") %>' />
                <br />Tên hãng:
                <asp:TextBox ID="Tên_hãngTextBox" runat="server" Text='<%# Bind("[Tên hãng]") %>' />
                <br />Công suất:
                <asp:TextBox ID="Công_suấtTextBox" runat="server" Text='<%# Bind("[Công suất]") %>' />
                <br />Giá:
                <asp:TextBox ID="GiáTextBox" runat="server" Text='<%# Bind("Giá") %>' />
                <br />Mã hãng xe:
                <asp:TextBox ID="Mã_hãng_xeTextBox" runat="server" Text='<%# Bind("[Mã hãng xe]") %>' />
                <br />Ảnh:
                <asp:TextBox ID="ẢnhTextBox" runat="server" Text='<%# Bind("Ảnh") %>' />
                <br />Kiểu dáng:
                <asp:TextBox ID="Kiểu_dángTextBox" runat="server" Text='<%# Bind("[Kiểu dáng]") %>' />
                <br />Xuất xứ:
                <asp:TextBox ID="Xuất_xứTextBox" runat="server" Text='<%# Bind("[Xuất xứ]") %>' />
                <br />Nhiên liệu:
                <asp:TextBox ID="Nhiên_liệuTextBox" runat="server" Text='<%# Bind("[Nhiên liệu]") %>' />
                <br />Loại hộp số:
                <asp:TextBox ID="Loại_hộp_sốTextBox" runat="server" Text='<%# Bind("[Loại hộp số]") %>' />
                <br />Màu sắc:
                <asp:TextBox ID="Màu_sắcTextBox" runat="server" Text='<%# Bind("[Màu sắc]") %>' />
                <br />Số cửa:
                <asp:TextBox ID="Số_cửaTextBox" runat="server" Text='<%# Bind("[Số cửa]") %>' />
                <br />Số chỗ:
                <asp:TextBox ID="Số_chỗTextBox" runat="server" Text='<%# Bind("[Số chỗ]") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /></td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
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
                <br />Tên salon:
                <asp:TextBox ID="Tên_salonTextBox" runat="server" Text='<%# Bind("[Tên salon]") %>' />
                <br />Mã salon:
                <asp:TextBox ID="Mã_salonTextBox" runat="server" Text='<%# Bind("[Mã salon]") %>' />
                <br />Tên ôtô:
                <asp:TextBox ID="Tên_ôtôTextBox" runat="server" Text='<%# Bind("[Tên ôtô]") %>' />
                <br />Tên hãng:
                <asp:TextBox ID="Tên_hãngTextBox" runat="server" Text='<%# Bind("[Tên hãng]") %>' />
                <br />Công suất:
                <asp:TextBox ID="Công_suấtTextBox" runat="server" Text='<%# Bind("[Công suất]") %>' />
                <br />Giá:
                <asp:TextBox ID="GiáTextBox" runat="server" Text='<%# Bind("Giá") %>' />
                <br />Mã hãng xe:
                <asp:TextBox ID="Mã_hãng_xeTextBox" runat="server" Text='<%# Bind("[Mã hãng xe]") %>' />
                <br />Ảnh:
                <asp:TextBox ID="ẢnhTextBox" runat="server" Text='<%# Bind("Ảnh") %>' />
                <br />Kiểu dáng:
                <asp:TextBox ID="Kiểu_dángTextBox" runat="server" Text='<%# Bind("[Kiểu dáng]") %>' />
                <br />Xuất xứ:
                <asp:TextBox ID="Xuất_xứTextBox" runat="server" Text='<%# Bind("[Xuất xứ]") %>' />
                <br />Nhiên liệu:
                <asp:TextBox ID="Nhiên_liệuTextBox" runat="server" Text='<%# Bind("[Nhiên liệu]") %>' />
                <br />Loại hộp số:
                <asp:TextBox ID="Loại_hộp_sốTextBox" runat="server" Text='<%# Bind("[Loại hộp số]") %>' />
                <br />Màu sắc:
                <asp:TextBox ID="Màu_sắcTextBox" runat="server" Text='<%# Bind("[Màu sắc]") %>' />
                <br />Số cửa:
                <asp:TextBox ID="Số_cửaTextBox" runat="server" Text='<%# Bind("[Số cửa]") %>' />
                <br />Số chỗ:
                <asp:TextBox ID="Số_chỗTextBox" runat="server" Text='<%# Bind("[Số chỗ]") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="">
                <table class="auto-style4">
                    <tr>
                        <td colspan="2">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" ImageUrl='<%# Eval("Ảnh", "~/imageoto/{0}") %>' Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <h3><asp:Label ID="Tên_ôtôLabel" runat="server" Text='<%# Eval("[Tên ôtô]") %>'></asp:Label></h3>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>
                            <h4><asp:Label ID="GiáLabel" runat="server" Text='<%# Eval("Giá") %>'></asp:Label></h4>
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">Mã xe:
                <asp:Label ID="Mã_xeLabel" runat="server" Text='<%# Eval("[Mã xe]") %>' />
                <br />Tên salon:
                <asp:Label ID="Tên_salonLabel" runat="server" Text='<%# Eval("[Tên salon]") %>' />
                <br />Mã salon:
                <asp:Label ID="Mã_salonLabel" runat="server" Text='<%# Eval("[Mã salon]") %>' />
                <br />Tên ôtô:
                <asp:Label ID="Tên_ôtôLabel" runat="server" Text='<%# Eval("[Tên ôtô]") %>' />
                <br />Tên hãng:
                <asp:Label ID="Tên_hãngLabel" runat="server" Text='<%# Eval("[Tên hãng]") %>' />
                <br />Công suất:
                <asp:Label ID="Công_suấtLabel" runat="server" Text='<%# Eval("[Công suất]") %>' />
                <br />Giá:
                <asp:Label ID="GiáLabel" runat="server" Text='<%# Eval("Giá") %>' />
                <br />Mã hãng xe:
                <asp:Label ID="Mã_hãng_xeLabel" runat="server" Text='<%# Eval("[Mã hãng xe]") %>' />
                <br />Ảnh:
                <asp:Label ID="ẢnhLabel" runat="server" Text='<%# Eval("Ảnh") %>' />
                <br />Kiểu dáng:
                <asp:Label ID="Kiểu_dángLabel" runat="server" Text='<%# Eval("[Kiểu dáng]") %>' />
                <br />Xuất xứ:
                <asp:Label ID="Xuất_xứLabel" runat="server" Text='<%# Eval("[Xuất xứ]") %>' />
                <br />Nhiên liệu:
                <asp:Label ID="Nhiên_liệuLabel" runat="server" Text='<%# Eval("[Nhiên liệu]") %>' />
                <br />Loại hộp số:
                <asp:Label ID="Loại_hộp_sốLabel" runat="server" Text='<%# Eval("[Loại hộp số]") %>' />
                <br />Màu sắc:
                <asp:Label ID="Màu_sắcLabel" runat="server" Text='<%# Eval("[Màu sắc]") %>' />
                <br />Số cửa:
                <asp:Label ID="Số_cửaLabel" runat="server" Text='<%# Eval("[Số cửa]") %>' />
                <br />Số chỗ:
                <asp:Label ID="Số_chỗLabel" runat="server" Text='<%# Eval("[Số chỗ]") %>' />
                <br /></td>
        </SelectedItemTemplate>
</asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="spSearchCars" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="valueText" Name="SearchTerm" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="valueText" runat="server" Text="Label" Visible="False"></asp:Label>

    <br />

    </asp:Content>



