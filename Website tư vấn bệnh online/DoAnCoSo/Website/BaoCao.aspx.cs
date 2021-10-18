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
    public partial class BaoCao : System.Web.UI.Page
    {
        static PagedDataSource p = new PagedDataSource();

        protected void hienThiBS()
        {
            String cauLenh = "select * from KEDON,BENHNHAN,BACSY where KEDON.MABACSY = BACSY.MABACSY and KEDON.MABENHNHAN = BENHNHAN.MABENHNHAN and BENHNHAN.TENTK = '" + XLDL.tenTK + "'";
            DataTable keDon = XLDL.docBan(cauLenh);
            gvKeDon.DataSource = keDon;
            gvKeDon.DataBind();
            //-------------------------------------------------------------------------------
            cauLenh = "select *, iif(BENHNHAN.GIOITINH = 1,'Nam',N'Nữ')as GIOITINHBN from BENHNHAN where BENHNHAN.TENTK = '" + XLDL.tenTK + "'";
            DataTable thongT2 = XLDL.docBan(cauLenh);
            p.DataSource = thongT2.DefaultView;
            dlThongTinBN.DataSource = p;
            dlThongTinBN.DataBind();
            //--------------------------------------------------------------------------------
            cauLenh = "select * from KEDON,BENHNHAN,BACSY where KEDON.MABACSY = BACSY.MABACSY and KEDON.MABENHNHAN = BENHNHAN.MABENHNHAN and BENHNHAN.TENTK = '" + XLDL.tenTK + "'";
            DataTable BaoCao = XLDL.docBan(cauLenh);
            gvBC.DataSource = BaoCao;
            gvBC.DataBind();
        }
        protected void hienThiBC()
        {
            //String cauLenh = "select *, iif(BENHNHAN.GIOITINH = 1,'Nam',N'Nữ')as GIOITINHBN from BAOCAO,BENHNHAN,BACSY where BAOCAO.MABACSY = BACSY.MABACSY and BAOCAO.MABENHNHAN = BENHNHAN.MABENHNHAN and BACSY.TENTK = '" + XLDL.tenTK + "'";
            //DataTable BaoCao = XLDL.docBan(cauLenh);
            //gvBC.DataSource = BaoCao;
            //gvBC.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hienThiBS();
               
            }
            ViewState["MABACSY"] = "";
            ViewState["maBN"] = "";

        }

        void load()
        {
            Response.Redirect("http://localhost:50025/Website/BaoCao.aspx");
        }
        protected void gvKeDon_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "nutGui")
            {

                if (!txtNoiDung.Text.Equals(""))
                {
                    String MABACSY = ViewState["MABACSY"].ToString();
                    String maBN = ViewState["maBN"].ToString();


                    int donghh = int.Parse(e.CommandArgument.ToString());
                    MABACSY = gvKeDon.Rows[donghh].Cells[6].Text;
                    maBN = gvKeDon.Rows[donghh].Cells[7].Text;
                    String cauLenh = "insert into BAOCAO (MABACSY,MABENHNHAN,NOIDUNG,NGAYBAOCAO) values ('" + MABACSY + "','" + maBN + "',N'" + txtNoiDung.Text + "',GETDATE())";
                    if (XLDL.thucHienLenh(cauLenh))
                    {
                        Response.Write("<script>alert('Gửi thông tin thành công')</script>");
                    }

                    else
                        Response.Write("<script>alert('gửi thất bại')</script>");

                }
                else
                {

                    Response.Write("<script>alert('Hãy nhập triệu chứng của bạn trước khi gửi cho bác sỹ nhé!')</script>");

                }

            }
        }

        
    }
}