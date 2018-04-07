using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class Coach_Schedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void FilterBtn_Click(object sender, EventArgs e)
    {
      
            string FilterExpression = string.Concat(DropDownList1.SelectedValue, " LIKE '%{0}%'");
            SqlDataSource1.FilterParameters.Clear();
            SqlDataSource1.FilterParameters.Add(new ControlParameter(DropDownList1.SelectedValue, "txtSearch", "Text"));
            SqlDataSource1.FilterExpression = FilterExpression;
        
    }

   

    protected void Clearbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Schedule.aspx");
    }
}
