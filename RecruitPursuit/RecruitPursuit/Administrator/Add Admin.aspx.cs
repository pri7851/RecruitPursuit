﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Administrator_Add_Admin : System.Web.UI.Page
{
    bool flag = false;
    bool textflag = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        
            string connection = "Data Source = 184.168.47.21; Initial Catalog = RecruitPursuit; Persist Security Info = True; User ID = RecruitPursuit; Password = Recruit20!8";
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM [COACH]";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                if (rd[5].ToString() == TextBox3.Text)
                {
                    flag = true;
                    break;
                }
            }
            

            if (flag == true)
            {
            
            lblWarning.Text = "Username already exists! Please enter a valid username!";
            lblWarning.Visible = true;
        }
            else
            {
                SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
                SqlDataSource1.InsertCommand = "INSERT into coach (Sport_id, C_FName, C_LName, C_title, Usename, Password) VALUES (@Sport_id, @C_FName, @C_LName, @C_title, @Usename, @Password)";
                SqlDataSource1.InsertParameters.Add("Sport_id", DropDownList1.SelectedValue);
                SqlDataSource1.InsertParameters.Add("C_FName", TextBox1.Text);
                SqlDataSource1.InsertParameters.Add("C_LName", TextBox2.Text);
                SqlDataSource1.InsertParameters.Add("C_title", DropDownList2.SelectedItem.Text);
                SqlDataSource1.InsertParameters.Add("Usename", TextBox3.Text);
                SqlDataSource1.InsertParameters.Add("Password", TextBox4.Text);
                SqlDataSource1.Insert();
                lblWarning.Text = "User was successfully added!";
            lblWarning.Visible = true;
        }




        
       


    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}