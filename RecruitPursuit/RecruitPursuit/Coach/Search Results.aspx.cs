using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Coach_Schedule_Results : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["Last_Name"] != null)
        {
            GridView1.DataSource = SqlDataSource2;
            GridView1.DataBind();
            Session["Last_Name"] = null;
        }
       else
        {
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind(); 
        }
    }
}