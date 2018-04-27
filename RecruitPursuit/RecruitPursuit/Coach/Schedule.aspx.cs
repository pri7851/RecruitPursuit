using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Globalization;
using java.util;
using org.omg.CORBA;
using java.awt;
using System.Web.Mvc;

public partial class Coach_Schedule : System.Web.UI.Page
{
    

        protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
    }


    protected void FilterBtn_Click(object sender, EventArgs e)
    {


        if (DDL1.SelectedItem.Text == "Name")
        {



            String[] names = txtSearch.Text.Split(' ');

            if (names.Length > 1)
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
                GridView1.DataSource = SqlDataSource2;
                GridView1.DataBind();
            }

        
    




                if (Session["Last_Name"] != null)
                {


                    GridView1.DataSource = SqlDataSource3;
                    GridView1.DataBind();
                    Session["Last_Name"] = null;


                }
                else
                {

                    GridView1.DataSource = SqlDataSource2;
                    GridView1.DataBind();


                }
            
        }
        if (DDL1.SelectedItem.Text == "Location")
        {
          

            SqlDataSource1.SelectCommand = "SELECT dbo.profile.Rec_FName, dbo.profile.Rec_LName,dbo.profile.Rec_FName+ dbo.profile.Rec_LName AS Name, dbo.Schedule.Tournament, dbo.Schedule.Location, dbo.Schedule.Time, dbo.Schedule.Team, dbo.Schedule.Pro_id, dbo.Schedule.StartDate, dbo.Schedule.EndDate FROM dbo.profile INNER JOIN dbo.Schedule ON dbo.profile.Pro_Id = dbo.Schedule.Pro_id WHERE (dbo.profile.Sport_Id = @Sport_Id)";
            string FilterExpression = string.Concat(DDL1.SelectedValue, " LIKE '%{0}%'");
            SqlDataSource1.FilterParameters.Clear();
            SqlDataSource1.FilterParameters.Add(new ControlParameter(DDL1.SelectedValue, "txtSearch", "Text"));
            SqlDataSource1.FilterExpression = FilterExpression;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
        if (DDL1.SelectedItem.Text == "Tournament")
        {
            
            SqlDataSource1.SelectCommand = "SELECT dbo.profile.Rec_FName, dbo.profile.Rec_LName,dbo.profile.Rec_FName+ dbo.profile.Rec_LName AS Name, dbo.Schedule.Tournament, dbo.Schedule.Location, dbo.Schedule.Time, dbo.Schedule.Team, dbo.Schedule.Pro_id, dbo.Schedule.StartDate, dbo.Schedule.EndDate FROM dbo.profile INNER JOIN dbo.Schedule ON dbo.profile.Pro_Id = dbo.Schedule.Pro_id WHERE (dbo.profile.Sport_Id = @Sport_Id)";

            string FilterExpression = string.Concat(DDL1.SelectedValue, " LIKE '%{0}%'");
            SqlDataSource1.FilterParameters.Clear();
            SqlDataSource1.FilterParameters.Add(new ControlParameter(DDL1.SelectedValue, "txtSearch", "Text"));
            SqlDataSource1.FilterExpression = FilterExpression;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
        if (DDL1.SelectedItem.Text == "Date")
        {
            GridView1.DataSource = SqlDataSource4;
            GridView1.DataBind();



        }

    }



    protected void Clearbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Schedule.aspx");
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DDL1.SelectedItem.Text == "Date")
        {
            

            SDlbl.Visible = true;
            EDlbl.Visible = true;
            TextBox1.Visible = true;
            imgPopup2.Visible = true;
        }
        else if (DDL1.SelectedItem.Text != "Date")
        {
          

            SDlbl.Visible = false;
            EDlbl.Visible = false;
            TextBox1.Visible = false;
            imgPopup2.Visible = false;
        }
    }

   
    
   
    
       
        
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {

    }
}
