using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Client_TimKiemNhanh : System.Web.UI.Page
{

   

    protected void Page_Load(object sender, EventArgs e)
    {
        valueText.Text = Master.SearchTerm.ToString();
       
        if (!IsPostBack)
        {
            GetData("");
            
        }

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
                SqlDataReader rdr = cmd.ExecuteReader();
                 
            con.Close();
                }
            
         
    }



    protected void Page_Init(object sender, EventArgs e)
    {

        Master.SearchButton.Click += new EventHandler(SearchButton_Click);
    }

    private void SearchButton_Click(object sender, EventArgs e)
    {
       
    }
}