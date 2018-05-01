using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_QuickSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // valueSearch.Text = Master.SearchTerm.toString();
    }


    private void GetData(string searchTerm)
    {
        string cs = ConfigurationManager.ConnectionStrings["QLBanOtoConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))

        {
            SqlCommand cmd = new SqlCommand("spSearchCars", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter searchParameter = new SqlParameter("@SearchTerm", searchTerm);
            cmd.Parameters.Add(searchParameter);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read()) {
   
            }

            con.Close();
        }


    }
}