﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_User_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public SortedList<string, string> LoadRecruits()
    {
        SortedList<string, string> RecruitList = new SortedList<string, string>();
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        for(int i = 0; i < dv.Count; i++)
        {
            string username = (String)dv[i]["Rec_Username"];
            string password = (String)dv[i]["Rec_password"];
            RecruitList.Add(username, password);
        }
        return RecruitList;
    }

   

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        
        SortedList<string, string> RecruitList = LoadRecruits();
        Session["Username"] = txtLogin.Text;
        foreach (KeyValuePair<string, string> login in RecruitList)
        {
            if(RecruitList.ContainsKey(txtLogin.Text))
            {
                int username = RecruitList.IndexOfKey(txtLogin.Text);
                int password = RecruitList.IndexOfValue(txtPassword.Text);

                if(username == password)
                {
                    Response.Redirect("Profile Page.aspx");
                }
                else
                {
                    lbl1.Text = "Login Failed. Wrong password.";
                }
            }
            else
            {
                lbl1.Text = "Login Failed. Wrong username.";
            }



        }








    }
}