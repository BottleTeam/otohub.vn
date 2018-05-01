using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       // string cs = ConfigurationManager.ConnectionStrings["QLBanOtoConnectionString"].ConnectionString;

        using (SqlConnection con = new SqlConnection("Data Source=FRT;Initial Catalog=QLBanOto;Integrated Security=True"))
        {
            SqlCommand cmd = new SqlCommand("select tenDangNhap,matKhau from TAIKHOAN where tenDangNhap=@tenDangNhap and matKhau=@matKhau", con);
            cmd.Parameters.AddWithValue("@tenDangNhap",txtTenDN.Text);
            cmd.Parameters.AddWithValue("@matKhau", txtMatKhau.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            System.Data.DataTable dt = new System.Data.DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count >0 )
            {
                Session["id"] = txtTenDN.Text;               
                Response.Redirect("QuickSearch.aspx");
                Session.RemoveAll();
            }
            else
            {
                Label1.Text = "You're username and word is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int i = CountMember() + 1;
        String ID = "TK" + i.ToString();
        using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection("Data Source=FRT;Initial Catalog=QLBanOto;Integrated Security=True"))
        {
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("insert into TAIKHOAN(soTK,tenDangNhap,matKhau, email, soDienThoai, diaChi) values(@IDUser, @TenDangNhap, @MatKhau, @Email, @SoDienThoai, @DiaChi)", con);
            cmd.Parameters.AddWithValue("@IDUser", ID);
            cmd.Parameters.AddWithValue("@TenDangNhap", txtTenDNhap.Text);
            cmd.Parameters.AddWithValue("@MatKhau", txtMKhau.Text);
            cmd.Parameters.AddWithValue("@Email",txtEmail.Text);
            cmd.Parameters.AddWithValue("@SoDienThoai",txtSDT.Text);
            cmd.Parameters.AddWithValue("@DiaChi", txtDiaChi.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }

    private int CountMember() {
        int i;
        using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection("Data Source=FRT;Initial Catalog=QLBanOto;Integrated Security=True"))

        {
            SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Select count(*) from TAIKHOAN", con);
            con.Open();
            i = (int)cmd.ExecuteScalar();
            con.Close();
        }
        return i;
    }
}