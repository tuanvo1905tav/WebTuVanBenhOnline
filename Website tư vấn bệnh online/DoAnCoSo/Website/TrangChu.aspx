<%@ Page Title="" Language="C#" MasterPageFile="~/Website/MasterPage.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="DoAnCoSo.Website.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Style_Content/TrangChu.css" rel="stylesheet" />
    <div class="contentTrangChu">
        <h1 style="margin-left: 470px;">ĐĂNG NHẬP ĐỂ SỬ DỤNG DỊCH VỤ</h1>
        <div class="formDn" id="dit" style="margin-top: 3.5%;">
            
            <table>
                <tr>
                    <td id="dich1">Tên tài khoản</td>
                    <td>
                        <asp:TextBox ID="txtTenTK" runat="server" Width="220px" CssClass="txt" BorderStyle="None"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Mật khẩu</td>
                    <td>
                        <asp:TextBox ID="txtMK" runat="server" TextMode="Password" Width="220px" CssClass="txt" BorderStyle="None"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>               
            </table>
                             
                <asp:Button ID="btnDangNhap" runat="server" BackColor="#CCCCCC" Text="Đăng nhập" CssClass="btn" BorderStyle="None" OnClick="btnDangNhap_Click" Height="43px" Width="101px"/>                 
            
        </div>
    </div>
</asp:Content>
