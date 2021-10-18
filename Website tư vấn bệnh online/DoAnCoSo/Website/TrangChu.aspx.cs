using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DoAnCoSo.App_Code;

namespace DoAnCoSo.Website
{
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            string tk = this.txtTenTK.Text.Trim();
            string mk = this.txtMK.Text.Trim();
            if (XLDL.isLoginValid(tk, mk))
            {
                XLDL.tenTK = tk;
                String lenh = "Select TENTK,TENBACSY  From BACSY where TENTK='" + XLDL.tenTK + "' ";
                if (XLDL.ktLoai(lenh))
                {
                    Response.Redirect("http://localhost:50025/Website/BacSy.aspx");
                }
                else
                {
                    Response.Redirect("http://localhost:50025/Website/BaoCao.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('tên đăng nhập hoặc mật khẩu của bạn không đúng!!')</script>");
            }
        }
    }
}