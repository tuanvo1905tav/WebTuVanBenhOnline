using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DoAnCoSo.App_Code;

namespace DoAnCoSo.Website
{
    public partial class BacSy : System.Web.UI.Page
    {
        public static String maBS = "";
        public static int maBN = 0;
        public static int maBC = 0;
        protected void hienThi()
        {
            String cauLenh = "select *, iif(BENHNHAN.GIOITINH = 1,'Nam',N'Nữ')as GIOITINHBN from BAOCAO,BENHNHAN,BACSY where BAOCAO.MABACSY = BACSY.MABACSY and BAOCAO.MABENHNHAN = BENHNHAN.MABENHNHAN and BACSY.TENTK = '" + XLDL.tenTK + "'";
            DataTable BaoCao = XLDL.docBan(cauLenh);
            gvBaoCaoBenhNhan.DataSource = BaoCao;
            gvBaoCaoBenhNhan.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                hienThi();
            ViewState["tenBN"] = "";



        }

        protected void gvBaoCaoBenhNhan_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "nutChon")
            {

                String tenBN = ViewState["tenBN"].ToString();
                int BNHH = int.Parse(e.CommandArgument.ToString());
                maBC = int.Parse(gvBaoCaoBenhNhan.Rows[BNHH].Cells[9].Text);
                tenBN = gvBaoCaoBenhNhan.Rows[BNHH].Cells[0].Text;
                txtBN.Text = tenBN;
                maBS = gvBaoCaoBenhNhan.Rows[BNHH].Cells[8].Text;
                maBN = int.Parse(gvBaoCaoBenhNhan.Rows[BNHH].Cells[9].Text);

            }

        }






        protected void btnKe_Click(object sender, EventArgs e)
        {
            if (!txtBN.Text.Equals(""))
            {
                String cauLenh = "insert into KEDON(MABACSY,MABENHNHAN,TENTHUOC,SOLUONG,LIEUDUNG,NGAYKE) values ('" + maBS + "'," + maBN + ",N'" + txtTenThuoc.Text + "'," + txtSoLuong.Text + ",'" + txtLieuDung.Text + "',GETDATE())";
                if (XLDL.thucHienLenh(cauLenh))
                {
                    cauLenh = "update BAOCAO set dake = 1 where maBAOCAO = '" + maBC + "'";
                    XLDL.thucHienLenh(cauLenh);
                    Response.Write("<script>alert('gửi thông tin thành công')</script>");
                }
                else
                    Response.Write("<script>alert('gửi thất bại')</script>");
            }
            else
            {
                Response.Write("<script>alert('hãy chọn bệnh nhân trước khi kê đơn thuốc nhé ')</script>");
            }
        }

    }
}