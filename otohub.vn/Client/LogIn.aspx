<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client_MasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="Client_LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
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
    <div class="login">
        <h2>Đăng nhập</h2>
       
        <table>
            <tr>
                <td><label>Tên đăng nhập</label></td>
                <td>
                    <asp:TextBox ID="txtTenDN" runat="server"></asp:TextBox>
                  </td>
            </tr>
            <tr>
                <td><label>Mật khẩu</label></td>
                <td>
                    <asp:TextBox ID="txtMatKhau" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
               <td colspan="2" class="auto-style4"> <asp:Button ID="Button1" runat="server" Text="Đăng nhập" BorderStyle="Solid" OnClick="Button1_Click" /></td>
            </tr>
            <tr>
               <td colspan="2" class="auto-style4"> <asp:Label ID="Label1" runat="server"></asp:Label></td>
            </tr>
            </table>
    </div>
        <div class="login">
            <h2>Đăng ký thành viên</h2>
            <table>
                 <tr>
                <td><label>Tên đăng nhập</label></td>
                <td>
                    <asp:TextBox ID="txtTenDNhap" runat="server"></asp:TextBox>
                  </td>
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDNhap" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
            </tr>
            <tr>
                <td><label>Mật khẩu</label></td>
                <td>
                    <asp:TextBox ID="txtMKhau" runat="server"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMKhau" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
                 <tr>
                <td><label>Nhập lại mật khẩu</label></td>
                <td>
                    <asp:TextBox ID="txtNhapLaiMK" runat="server"></asp:TextBox>
                    </td>
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNhapLaiMK" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMKhau" ControlToValidate="txtNhapLaiMK" ErrorMessage="Mật khẩu không khớp" ForeColor="Red"></asp:CompareValidator>
                     </td>
            </tr>
                <tr>
                <td><label>Email</label></td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
                <tr>
                <td><label>Số điện thoại</label></td>
                <td>
                    <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSDT" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
                <tr>
                <td><label>Địa chỉ</label></td>
                <td>
                    <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
               <td colspan="2" class="auto-style4"> <asp:Button ID="Button2" runat="server" Text="Đăng ký thành viên" BorderStyle="Solid" OnClick="Button2_Click" /></td>
            </tr>
            </table>
        </div>
        </div>
</asp:Content>

