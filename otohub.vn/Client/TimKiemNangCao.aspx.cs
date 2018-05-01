using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Client_TimKiemNangCao : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {         
            GetData("","", "", "","",0,0, "");          
        }

    }




    protected void btnTimKiem_Click(object sender, EventArgs e)
    {
        GetData(ddlHang.SelectedValue,ddlKieuDang.SelectedValue,ddlHopSo.SelectedValue,ddlNhienLieu.SelectedValue,RadioButtonList1.SelectedValue, Convert.ToInt32(ddlSoCua.SelectedValue), Convert.ToInt32(ddlSoCho.SelectedValue),ddlMauSac.SelectedValue);
    }


    private void GetData(String TenHang, String KieuDang ,String HopSo,String NhienLieu, String XuatXu,int SoCho,int SoCua,String MauSac)
    {
        
        string cs = ConfigurationManager.ConnectionStrings["QLBanOtoConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("spAdvanceSearchCars", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter HangParameter = new SqlParameter("@TenHang", TenHang ?? string.Empty);
            SqlParameter KieuDangParameter = new SqlParameter("@KieuDang", KieuDang ?? string.Empty);
            SqlParameter HopSoParameter = new SqlParameter("@HopSo", HopSo ?? string.Empty);
            SqlParameter NhienLieuParameter = new SqlParameter("@NhienLieu", NhienLieu ?? string.Empty);
            SqlParameter XuatXuParameter = new SqlParameter("@XuatXu", XuatXu ?? string.Empty);
            SqlParameter SoChoParameter = new SqlParameter("@SoCho", SoCho);
            SqlParameter SoCuaParameter = new SqlParameter("@SoCua", SoCua);
            SqlParameter MauSacParameter = new SqlParameter("@MauSac", MauSac ?? string.Empty);
            cmd.Parameters.Add(HangParameter);
            cmd.Parameters.Add(KieuDangParameter);
            cmd.Parameters.Add(HopSoParameter);
            cmd.Parameters.Add(NhienLieuParameter);
            cmd.Parameters.Add(XuatXuParameter);
            cmd.Parameters.Add(SoChoParameter);
            cmd.Parameters.Add(SoCuaParameter);
            cmd.Parameters.Add(MauSacParameter);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            //ListView1.DataSource = ds;
            ListView1.DataBind();

        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        btnTimKiem.Click += new EventHandler(btnTimKiem_Click);
        }
}
