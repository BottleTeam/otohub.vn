using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QL_Hang_ThemMoi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void moTaTextBox_TextChanged(object sender, EventArgs e)
    {

    }

    

    protected void tenHangTextBox_TextChanged(object sender, EventArgs e)
    {

    }

    protected void InsertButton_Click1(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, GetType(),
                      "ServerControlScript", "alert(\"Thêm thành công!\");", true);
    }
}