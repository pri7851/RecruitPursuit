using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            Label1.Text = "Welcome " + Session["Username"].ToString() + "!";
        }
        else
        {
            Response.Redirect("User Login.aspx");
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("/Welcome.aspx");
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        String[] names = SearchBox.Text.Split(' ');
        if(names.Length > 1)
        {
            String f_name = names[0].ToString();
            String l_name = names[1].ToString();
            Session["First_Name"] = f_name;
            Session["Last_Name"] = l_name;
        }
        else
        {
            String name = names[0].ToString();
            Session["Name"] = name;
        }
        
        
        Response.Redirect("Search Results.aspx");
    }
}
