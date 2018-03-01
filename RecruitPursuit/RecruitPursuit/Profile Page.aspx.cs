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

        int ProID;
        if (Request.QueryString["Pro_id"] != null)
        {
            ProID = int.Parse(Request.QueryString["Pro_id"].ToString());
        }
        else
        {
            Response.Write("Invalid access to page!");
            Response.End();
        }



    }

 

    

   

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
}