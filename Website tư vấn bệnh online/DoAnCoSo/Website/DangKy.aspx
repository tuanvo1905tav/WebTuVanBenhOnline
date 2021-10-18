<%@ Page Title="" Language="C#" MasterPageFile="~/Website/MasterPage.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="DoAnCoSo.Website.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Style_Content/DangKy.css" rel="stylesheet" />
    <div class="full-webDK">   
        <div class="tieuDe">
            <h1>NHẬP THÔNG TIN ĐĂNG KÝ</h1>
        </div>
        <div class="formThongTin">
            <div class="trai">
                <asp:Label Text="Tên tài khoản: " runat="server" /><br /><br />
                <asp:Label Text="Mật khẩu: " runat="server" /><br /><br />
                <asp:Label Text="Họ và tên: " runat="server" /><br /><br />
                <asp:Label Text="Gới tính: " runat="server" /><br /><br />
                <asp:Label Text="Ngày sinh: " runat="server" /><br /><br />
                <asp:Label Text="Số điện thoại: " runat="server" /><br /><br />
                <asp:Label Text="Địa chỉ: " runat="server" /><br /><br />
            </div>
            <div class="phai">
                <asp:TextBox ID="txtTenTK" runat="server" CssClass="txtMaBn"></asp:TextBox><br />
                <asp:TextBox ID="txtPass" runat="server" CssClass="txtMaBn" TextMode="Password"></asp:TextBox><br />
                <asp:TextBox ID="txtHTen" runat="server" CssClass="txtMaBn"></asp:TextBox><br />
                <asp:RadioButton ID="rbNam" runat="server" Text="Nam" GroupName="gNGioiTinh" CssClass="rdobt"/><asp:RadioButton ID="RadioButton2" runat="server" CssClass="rdobt" Text="Nữ" GroupName="gNGioiTinh" /><br />
                <asp:TextBox ID="txtNS" runat="server" CssClass="txtMaBn" TextMode="Date"></asp:TextBox><br />
                <asp:TextBox ID="txtSDT" runat="server" CssClass="txtMaBn"></asp:TextBox><br />
                <asp:TextBox ID="txtDC" runat="server" CssClass="txtMaBn"></asp:TextBox><br />
                
            </div>
                
               <asp:Button Text="Gửi đi" runat="server"  CssClass="btnGui" OnClick="Unnamed8_Click"/>
    </div>
        </div>
</asp:Content>
