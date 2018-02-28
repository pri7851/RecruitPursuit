using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;

public partial class Profile_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String Pro_id = Request.QueryString["Pro"];
        
    }

    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {
       
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
       
    }
}