using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_Schedule : System.Web.UI.Page
{ bool hide = false;
    bool show = true;
    int ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ID"] != null)
        {
            ID = int.Parse(Session["ID"].ToString());
        }

        

    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

   





   

    protected void Showbtn_Click(object sender, EventArgs e)
    {
        if (hide == false)
        {
            AddSchTbl.Visible = true;
            Hidebtn.Visible = true;
            

        }
    }

    protected void Hide_Click(object sender, EventArgs e)
    {
            if (show == true)
        {
            AddSchTbl.Visible = false;
            Hidebtn.Visible = false;


        }

    }


    protected void Insertdatabtn_click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
        SqlDataSource1.InsertCommand = "Insert into Schedule (Pro_Id, Tournament, Location, Date, Time, Team) VALUES (@Pro_id,@Tournament, @Location, @Date, @Time, @Team )";

        SqlDataSource1.InsertParameters.Add("Pro_id", Convert.ToString(Session["ID"]));
        SqlDataSource1.InsertParameters.Add("Tournament", TmentTxt.Text);
        SqlDataSource1.InsertParameters.Add("Location", LocationTxt.Text);
        SqlDataSource1.InsertParameters.Add("Date", DateTxt.Text);
        SqlDataSource1.InsertParameters.Add("Time", TimeTxt.Text);
        SqlDataSource1.InsertParameters.Add("Team", TeamTxt.Text);

        SqlDataSource1.Insert();

        TmentTxt.Text = "";
        LocationTxt.Text = "";
        DateTxt.Text = "";
        TimeTxt.Text = "";
        TeamTxt.Text = "";
    }
}

