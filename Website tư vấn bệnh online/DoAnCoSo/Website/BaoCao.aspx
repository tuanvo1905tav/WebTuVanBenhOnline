<%@ Page Title="" Language="C#" MasterPageFile="~/Website/MasterPage.Master" AutoEventWireup="true" CodeBehind="BaoCao.aspx.cs" Inherits="DoAnCoSo.Website.BaoCao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Style_Content/Baocao1.css" rel="stylesheet" />
    <div class="full-web">
        <div class="tieuDe">
            <h1>NHẬP THÔNG TIN TRIỆU CHỨNG BỆNH</h1>
        </div>
        <div class="formThongTin">
            <div class="trai">
                <br /><br />
                <asp:Label ID="Label11" runat="server" Text="Triệu chứng của bạn: " />
                <asp:TextBox ID="txtNoiDung" runat="server" Height="67px" Width="236px"></asp:TextBox>
                <br /><br />
            </div>
            <div class="phai">
                <asp:DataList ID="dlThongTinBN" runat="server" DataKeyField="MABENHNHAN" DataMember="MABENHNHAN">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text="Tên bệnh nhân: " />
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("TENBENHNHAN").ToString() %>'></asp:Label>
                        &nbsp;<br /><br />
                        <asp:Label ID="Label2" runat="server" Text="Giới tính: " />
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("GIOITINHBN").ToString() %>'></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Ngày sinh: " />
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("NGAYSINH").ToString() %>'></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Số điện thoại: " />
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("SDT").ToString() %>'></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Địa chỉ: " />
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("DIACHI").ToString() %>'></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
                <br />
                
            </div>
                
               <asp:Button Text="Gửi đi" runat="server"  CssClass="btnGui"/>

            
            <asp:GridView ID="gvKeDon" runat="server" AutoGenerateColumns="False" CssClass="grview" DataKeyNames="MABACSY" BorderWidth="2px" CellPadding="2" OnRowCommand="gvKeDon_RowCommand" Width="787px" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="TENBACSY" HeaderText="Tên bác sỹ">
                    
                    <HeaderStyle VerticalAlign="Middle" />
                    
                    </asp:BoundField>
                    <asp:BoundField DataField="SDTBS" HeaderText="Số điện thoại" >
                    
                    </asp:BoundField>
                    <asp:BoundField DataField="TENTHUOC" HeaderText="Tên thuốc" >
                    
                    </asp:BoundField>
                    <asp:BoundField DataField="SOLUONG" HeaderText="Số lượng" >
                  
                    </asp:BoundField>
                    <asp:BoundField DataField="LIEUDUNG" HeaderText="Liều dùng" >
                  
                    </asp:BoundField>
                    <asp:BoundField DataField="NGAYKE" HeaderText="Ngày kê" >
                   
                    </asp:BoundField>
                    <asp:BoundField DataField="MABACSY" HeaderText="Mã bác sĩ" >
              
                    </asp:BoundField>
                    <asp:BoundField DataField="MABENHNHAN" HeaderText="Mã bệnh nhân" >
                  
                    </asp:BoundField>
                    <asp:ButtonField ButtonType="Button" CommandName="nutGui" ControlStyle-CssClass="btnGui" Text="Gửi">
                    <ControlStyle BorderStyle="None" Width="100px" />
                    </asp:ButtonField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>

            
            <br />
            <asp:GridView ID="gvBC" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="814px" CssClass="bang2">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="TENBENHNHAN" HeaderText="Tên bệnh nhân" />
                    <asp:BoundField DataField="TENBACSY" HeaderText="Tên bác sĩ" />
                    <asp:BoundField DataField="TENTHUOC" HeaderText="Tên thuốc" />
                    <asp:BoundField DataField="SOLUONG" HeaderText="Số lượng" />
                    <asp:BoundField DataField="LIEUDUNG" HeaderText="Liều dùng" />
                    <asp:BoundField DataField="NGAYKE" HeaderText="Ngày kê" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>

            
        </div>
    </div>
    <link href="../Style_Content/TrangChu.css" rel="stylesheet" />
    
</asp:Content>
