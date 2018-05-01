<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client_MasterPage.master" AutoEventWireup="true" CodeFile="DangTinBanOto.aspx.cs" Inherits="Client_DangTinBanOto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
         .auto-style4 {
            text-align: center;
        }
         .login{
            width:50%;
            float:left;
          
        }
        .panel{
            width:80%;
            overflow:hidden;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="panel">
        <h2>Đăng tin bán ôtô</h2>
        
        <div class="login">
            <h3><i>Thông tin chung</i></h3>
        <table>
      
            <tr>
                <td>Chọn hãng</td>
                <td>
                    <asp:DropDownList ID="ddlHang" runat="server">
                    </asp:DropDownList>
                  </td>
                
            </tr>
            <tr>
                <td>Tên xe</td>
                <td>
                    <asp:TextBox ID="txtTenXe" runat="server"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không được để trống" ControlToValidate="txtTenXe" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                 <td>Màu sắc</td>
                <td>
                    <asp:TextBox ID="txtMauSac" runat="server"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Không được để trống" ControlToValidate="txtMauSac" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                 <td>Giá thương lượng</td>
                <td>
                    <asp:TextBox ID="txtGiaThuongLuong" runat="server"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Không được để trống" ControlToValidate="txtGiaThuongLuong" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
             <tr>
                 <td></td>
            </tr>
            <tr>
                 <td></td>
            </tr>
            <tr>
                 <td></td>
            </tr>
            <tr>
                 <td></td>
            </tr>
            <tr>
                 <td></td>
            </tr>
            <tr>
                 <td colspan="2" class="auto-style4"> <asp:Button ID="btnDangTin" runat="server" Text="Đăng tin" BorderStyle="Solid" />
                    </td>
            </tr>
            
             </table>
    </div>
        <div class="login">
           <h3><i>Thông số kỹ&nbsp; thuật</i></h3>
            <table>
                 <tr>
                <td><label>Kiểu dáng</label></td>
                <td>
                    <asp:DropDownList ID="ddlKieuDang" runat="server">
                    </asp:DropDownList>
                  </td>
                     <td>
                         &nbsp;</td>
            </tr>
            <tr>
                <td>Loại hộp số</td>
                <td>
                    <asp:DropDownList ID="ddlLoaiHopSo" runat="server">
                    </asp:DropDownList>
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
                 <tr>
                <td>Số cửa</td>
                <td>
                    <asp:TextBox ID="txtSoCua" runat="server"></asp:TextBox>
                    </td>
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSoCua" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
            </tr>
                <tr>
                <td>Số chỗ</td>
                <td>
                    <asp:TextBox ID="txtSoCho" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSoCho" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
                <tr>
                <td>Nhiên liệu</td>
                <td>
                    <asp:DropDownList ID="ddlNhienLieu" runat="server">
                    </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
            </tr>
                <tr>
                <td><label>Công suất</label></td>
                <td>
                    <asp:TextBox ID="txtCongSuat" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCongSuat" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
               <td colspan="2" class="auto-style4"> &nbsp;</td>
            </tr>
            </table>
    </div>
    </div>
</asp:Content>

