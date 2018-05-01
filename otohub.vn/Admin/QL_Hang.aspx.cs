using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QL_Hang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    protected void btnTimKiem_Click(object sender, EventArgs e)
    {
        String st = txtTimKiem.Value;
        //sqlDsTimKiem.SelectCommand = ;
        //GridView1.DataSource = sqlDsTimKiem;
        //GridView1.DataBind();
        string cs = ConfigurationManager.ConnectionStrings["QLBanOtoConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);

        SqlCommand cmd = new SqlCommand("SELECT * FROM [HANG] WHERE (maHangXe=" + st + ") ", con);



        //con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {

            ScriptManager.RegisterStartupScript(this, this.GetType(), "RunCode", "javascript:alert('Sorry No Records Found with this Keyword.....');document.location.href='SamePage.aspx';", true);

        }
        else
        {
            GridView1.DataSource = dt;
        GridView1.DataBind();

        }
        

    }
}