using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DoAnCoSo.App_Code;

namespace DoAnCoSo.Website
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed8_Click(object sender, EventArgs e)
        {
            if (!XLDL.ktLoai(txtTenTK.Text))
            {
                string mk = XLDL.GetHash(txtPass.Text);
                String cauLenh = "insert into TAIKHOAN (TENTK,MATKHAU,LOAITK) values ('" + txtTenTK.Text + "','" + mk + "','2')";
                if (XLDL.thucHienLenh(cauLenh))
                {
                    bool GT = true;
                    if (!rbNam.Checked)
                        GT = false;
                    cauLenh = "insert into BENHNHAN (TENBENHNHAN,GIOITINH,NGAYSINH,SDT,DIACHI,TENTK) values (N'" + txtHTen.Text + "', '" + GT + "','" + txtNS.Text + "','" + txtSDT.Text + "',N'" + txtDC.Text + "','" + txtTenTK.Text + "')";
                    if (XLDL.thucHienLenh(cauLenh))
                    {
                        Response.Write("<script>alert('đăng ký thông tin thành công')</script>");
                    }

                    else
                        Response.Write("<script>alert('đăng ký thất bại')</script>");
                }
                else
                    Response.Write("<script>alert('tên tài khoản đã có người đăng ký ')</script>");
            }
        }
    }
}