﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;


public partial class Home : System.Web.UI.Page
{
 

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Username"] != null)
        {
            lblSession.Text = "Welcome " + Session["Username"].ToString() + "!";
        }
        else
        {
            Response.Redirect("User Login.aspx");
        }
    }

 

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }




    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["Pro_Id"] = GridView1.SelectedIndex;
    }

    
    protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("User Login.aspx");
    }
}