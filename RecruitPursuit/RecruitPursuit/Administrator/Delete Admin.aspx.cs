﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Data;

public partial class Administrator_Delete_Admin : System.Web.UI.Page
{
    bool flag = false;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        string connection = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Justin\Desktop\recruitpursuit.mdf; Integrated Security = True; Connect Timeout = 30";
        SqlConnection con = new SqlConnection(connection);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "SELECT * FROM [COACH]";
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();

        while (rd.Read())
        {
            if (rd[5].ToString() == txtName.Text)
            {
                flag = true;
                break;
            }
        }

        if (flag == true)
        {
            if (txtName.Text != txtConfirm.Text)
            {
                lblDelete.Visible = true;
                lblDelete.Text = "Usernames do not match. Please try again.";
            }
            else
            {
                if (txtName.Text == "")
                {
                    if (txtConfirm.Text == "")
                    {
                        lblDelete.Visible = true;
                        lblDelete.Text = "Please enter a username";
                    }
                }
                else
                {
                    lblDelete.Text = "Are you sure you want to delete this user?";
                    lblDelete.Visible = true;
                    btnConfirm.Visible = true;
                    btnCancel.Visible = true;
                }
            }
        }
        else
        {
            lblDelete.Visible = true;
            lblDelete.Text = "Username does not exist! Please enter a valid username!";
        }


        
    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        SqlDataSource1.DeleteCommandType = SqlDataSourceCommandType.Text;
        SqlDataSource1.DeleteCommand = "DELETE FROM coach WHERE Usename=@Usename";
        SqlDataSource1.DeleteParameters.Add("Usename", txtName.Text);
        SqlDataSource1.Delete();
        Label1.Visible = true;
    }

    
}