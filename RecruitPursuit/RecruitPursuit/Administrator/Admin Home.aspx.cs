using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_Admin_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Sport"] = DropDownList1.SelectedItem.Text;
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Response.Redirect("Delete Admin.aspx");
    }

    protected void btnView_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}