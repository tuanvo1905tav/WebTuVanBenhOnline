using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace DoAnCoSo.App_Code
{
    public class XLDL
    {
        private static String chuoi_kn = "Server=DESKTOP-BDLNSL2\\KHANG;Database=DOCTOR;User ID=lgBS;Password=khangdeptrai";
        public static String tenTK ;
        public static String loai = "";
        public static DataSet ds;
        public static DataViewManager dsView;
        public static bool isLoginValid(string tKhoan, string mKhau)
        {
            bool kq = false;
            
            SqlConnection conn = new SqlConnection(chuoi_kn);
            try
            {
                conn.Open();
                string mk = GetHash(mKhau);
                string strQuery = "Select TENTK, matKhau From TAIKHOAN where TENTK='" + tKhoan + "' And matKhau='" + mk + "';";
                SqlCommand cmd = new SqlCommand(strQuery, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                kq = reader.Read();
            }
            catch (Exception e)
            {
                string err = e.Message;
            }
            finally
            {
                conn.Close();
            }
            return kq;
        }
        /// <summary>
        /// Phuong thuc dung de ma hoa du lieu
        /// </summary>
        /// <param name="plainText"></param>
        /// <returns></returns>
        public static string GetHash(string plainText)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            // Compute hash from the bytes of text
            md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(plainText));
            // Get hash result after compute it
            byte[] result = md5.Hash;
            StringBuilder strBuilder = new StringBuilder();
            for (int i = 0; i < result.Length; i++)
            {
                strBuilder.Append(result[i].ToString("x2"));
            }

            return strBuilder.ToString();
        }
        //-----------------------------------------------------------------------------------------------
        //ket noi SQL 

        public static DataTable docBan(string cauLenh = "")
        {
            SqlConnection conn = new SqlConnection(chuoi_kn);
            try
            {
                conn.Open();
                SqlDataAdapter cmd = new SqlDataAdapter(cauLenh, conn);
                DataTable bang = new DataTable();
                cmd.Fill(bang);
                return bang;

            }
            catch (Exception e)
            {
                string err = e.Message;
                return null;
            }
            finally
            {
                conn.Close();
            }
        }
        //--------------------------------------------------------------------------------------------------------
        //thuc hien lenh cap nhat : update, insert, delete
        public static bool thucHienLenh(String cauLenh)
        {
            try
            {
                SqlConnection ketNoi = new SqlConnection(chuoi_kn);
                SqlCommand boLenh = new SqlCommand(cauLenh, ketNoi);
                ketNoi.Open();
                boLenh.ExecuteNonQuery();
                ketNoi.Close();
                return true;

            }
            catch
            {
                return false;
            }

        }
        //-----------------------------------------------------------------------------------------------------------
        public static bool ktLoai(string tKhoan)
        {
            bool kq1 = false;

            SqlConnection conn = new SqlConnection(chuoi_kn);
            try
            {
                conn.Open();
                string strQuery = "Select TAIKHOAN.TENTK  From TAIKHOAN where taikhoan.TENTK='"+tenTK+"' and LOAITK = '1' ";
                SqlCommand cmd1 = new SqlCommand(strQuery, conn);
                SqlDataReader reader1 = cmd1.ExecuteReader();
                kq1 = reader1.Read();
                
            }
            catch (Exception e)
            {
                string err = e.Message;
            }
            finally
            {
                conn.Close();
            }
            return kq1;
        }
    }
    
}