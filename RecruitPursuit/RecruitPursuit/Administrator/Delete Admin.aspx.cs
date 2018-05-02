using System;
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
        string connection = "Data Source = 184.168.47.21; Initial Catalog = RecruitPursuit; Persist Security Info = True; User ID = RecruitPursuit; Password = Recruit20!8";
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
        if(txtName.Text == "" && txtConfirm.Text == "")
        {
            lblDelete.Text = "Please enter a username to delete!";
        }
        
        if (flag == true && txtName.Text == txtConfirm.Text)
        {
            
                    lblDelete.Text = "Are you sure you want to delete this user?";
                    lblDelete.Visible = true;
                    btnConfirm.Visible = true;
                    btnCancel.Visible = true;
                
        }
        else
        if(flag == true && txtName.Text != txtConfirm.Text)
        {
            lblDelete.Text = "Usernames do not match! Please try again!";

        }
        else
        {
            lblDelete.Visible = true;
            lblDelete.Text = "Username does not exist! Please enter a valid username!";
        }


        
    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        lblDelete.Visible = false;
        Label1.Visible = true;
        SqlDataSource1.DeleteCommandType = SqlDataSourceCommandType.Text;
        SqlDataSource1.DeleteCommand = "DELETE FROM coach WHERE Usename=@Usename";
        SqlDataSource1.DeleteParameters.Add("Usename", txtName.Text);
        SqlDataSource1.Delete();
        Label1.Visible = true;
        btnConfirm.Visible = false;
        btnCancel.Visible = false;
        txtName.Text = "";
        txtConfirm.Text = "";
    }

    
}