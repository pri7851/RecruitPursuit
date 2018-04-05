using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Recruit_Sport_Selection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Session["SportName"] = DropDownList1.SelectedItem.Text;
        Session["Sport_Id"] = DropDownList1.SelectedValue;
        Response.Redirect("Recruit Questionnaire.aspx");
    }
}