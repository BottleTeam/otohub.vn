<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="QL_Hang_ThemMoi.aspx.cs" Inherits="QL_Hang_ThemMoi" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12">
            <h2 style="text-align: center">
                    Quản lý hãng xe</h2>
                
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="maHangXe" DataSourceID="sqlDsHang" DefaultMode="Insert" HorizontalAlign="Center" Width="690px">
                        <EditItemTemplate>
                            maHangXe:
                            <asp:Label ID="maHangXeLabel1" runat="server" Text='<%# Eval("maHangXe") %>' />
                            <br />
                            tenHang:
                            <asp:TextBox ID="tenHangTextBox" runat="server" Text='<%# Bind("tenHang") %>' />
                            <br />
                            moTa:
                            <asp:TextBox ID="moTaTextBox" runat="server" Text='<%# Bind("moTa") %>' />
                            <br />
                            logo:
                            <asp:TextBox ID="logoTextBox" runat="server" Text='<%# Bind("logo") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <table cellpadding="5" cellspacing="1" style="border: 2px solid #CC0000; width: 100%; background-color: #FFFFCC; text-align: center;" aria-checked="false" border="1">
                                <tr>
                                    <td style="height: 30px; width: 214px; color: #CC0000;"><b>Mã hãng xe:</b></td>
                                    <td style="height: 30px">
                                        <asp:TextBox ID="maHangXeTextBox" runat="server" Text='<%# Bind("maHangXe") %>' Width="200px" Height="25px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 214px; color: #CC0000;"><b>Tên hãng:</b></td>
                                    <td>
                                        <asp:TextBox ID="tenHangTextBox" runat="server" OnTextChanged="tenHangTextBox_TextChanged" Text='<%# Bind("tenHang") %>' Width="200px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 214px; color: #CC0000;"><b>Mô tả:</b></td>
                                    <td>
                                        <asp:TextBox ID="moTaTextBox" runat="server" Text='<%# Bind("moTa") %>' Width="361px" TextMode="MultiLine" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 214px; color: #CC0000; height: 30px;"><b>Logo</b></td>
                                    <td style="height: 30px">
                                        <asp:TextBox ID="logoTextBox" runat="server" Text='<%# Bind("logo") %>' Width="200px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 214px; height: 21px;">
                                        <asp:Button ID="Button1" runat="server" CommandName="Insert" BackColor="#CC0000" BorderColor="#CC0000" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" ForeColor="#FFFFCC" Text="Thêm" OnClick="InsertButton_Click1" EnableTheming="True" />
                                    </td>
                                    <td style="height: 40px">
                                        <asp:Button ID="Button2" runat="server" CommandName="Cancel" BackColor="#CC0000" BorderColor="#CC0000" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" ForeColor="#FFFFCC" Text="Hủy" PostBackUrl="~/QL_Hang.aspx" />
                                    </td>
                                </tr>
                            </table>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            maHangXe:
                            <asp:Label ID="maHangXeLabel" runat="server" Text='<%# Eval("maHangXe") %>' />
                            <br />
                            tenHang:
                            <asp:Label ID="tenHangLabel" runat="server" Text='<%# Bind("tenHang") %>' />
                            <br />
                            moTa:
                            <asp:Label ID="moTaLabel" runat="server" Text='<%# Bind("moTa") %>' />
                            <br />
                            logo:
                            <asp:Label ID="logoLabel" runat="server" Text='<%# Bind("logo") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                
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
            
        </div>
    </div>
    

</asp:Content>

