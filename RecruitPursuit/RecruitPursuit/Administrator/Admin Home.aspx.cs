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
        if (Session["Admin"] != null)
        {
            Label1.Text = "Welcome " + Session["Admin"].ToString() + "!";
        }
        else
        {
            Response.Redirect("Admin Login.aspx");
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Response.Redirect("Delete Admin.aspx");
    }

    protected void btnView_Click(object sender, EventArgs e)
    {
        Session["SportId"] = DropDownList1.SelectedValue;
        Response.Redirect("Home.aspx");
    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}