<%@ Page Title="" Language="C#" MasterPageFile="~/Website/MasterPage.Master" AutoEventWireup="true" CodeBehind="BacSy.aspx.cs" Inherits="DoAnCoSo.Website.BacSy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Style_Content/BacSi1.css" rel="stylesheet" />
    <div class="full-web">
        <div class="tieuDe">
            <h1 style="margin-left: 100px;">THÔNG TIN VÀ KÊ DƠN</h1>
        </div>
        <div class="formThongTin">
            
            
            <asp:GridView ID="gvBaoCaoBenhNhan" runat="server" AutoGenerateColumns="False" DataKeyNames="maBAOCAO" OnRowCommand="gvBaoCaoBenhNhan_RowCommand" Width="814px" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="bacSy1"> 
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="TENBENHNHAN" HeaderText="Tên bệnh nhân " />
                    <asp:BoundField DataField="GIOITINHBN" HeaderText="Giới tính " />
                    <asp:BoundField DataField="NGAYSINH" HeaderText="Ngày sinh " />
                    <asp:BoundField DataField="SDT" HeaderText="Số điện thoại" />
                    <asp:BoundField DataField="NGAYBAOCAO" HeaderText="Ngày báo cáo " />
                    <asp:BoundField DataField="NOIDUNG" HeaderText="Nội dung" />
                    <asp:CheckBoxField DataField="daKe" HeaderText="Duyệt " />
                    <asp:ButtonField ButtonType="Button" CommandName="nutChon" Text="Chọn" />
                    <asp:BoundField DataField="MABACSY" HeaderText="Mã bác sĩ" />
                    <asp:BoundField DataField="MABENHNHAN" HeaderText="Mã bệnh nhân" />
                    <asp:BoundField DataField="maBAOCAO" HeaderText="Mã báo cáo" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <span>Tên bệnh nhân&ensp;</span>
                <asp:TextBox ID="txtBN" runat="server" CssClass="txt"></asp:TextBox>
                <br />
                <span class="a">Tên thuốc </span><asp:TextBox ID="txtTenThuoc" runat="server" CssClass="ss"></asp:TextBox>
                <br />
                <span class="a">Số lượng&ensp;</span><asp:TextBox ID="txtSoLuong" runat="server" TextMode="Number" CssClass="ss"></asp:TextBox>
                <br />
                <span class="a">Liều dùng </span><asp:TextBox ID="txtLieuDung" runat="server" CssClass="ss"></asp:TextBox>
            </asp:Panel>
            <asp:Button ID="btnKe" runat="server" OnClick="btnKe_Click" Text="kê đơn" CssClass="btnKeDon"/>
            <br />
            
            
        </div>
    </div>
</asp:Content>
