using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Administrator/Admin Login.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Coach/User Login.aspx");
    }

    protected void btn_Recruit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Coach/Questionnaire Preview.aspx");
    }
}