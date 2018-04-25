using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;


public partial class Profile_Page : System.Web.UI.Page
{
    bool hide = false;
    bool show = true;
    int ID;
    int ProID;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ID"] != null)
        {
            ID = int.Parse(Session["ID"].ToString());
        }

        if (Request.QueryString["Pro_Id"] != null)
        {
            ProID = int.Parse(Request.QueryString["Pro_Id"].ToString());
        }
       
        else
        {
            Response.Write("Invalid access to page!");
            Response.End();
        }

    }
    

   

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }

    protected void Addnotes_Click(object sender, EventArgs e)
    {


      

        /*
            SqlDSnote.InsertCommandType = SqlDataSourceCommandType.Text;
            SqlDSnote.InsertCommand = "Insert into Notes (Pro_Id,NPost_date,Note) VALUES (@Pro_id,@NPost_date,@Note)";

            SqlDSnote.InsertParameters.Add("Pro_id", Request.QueryString["Pro_id"]);
            SqlDSnote.InsertParameters.Add("NPost_date", DateTime.Now.ToString());
            SqlDSnote.InsertParameters.Add("Note", TxtNotes.Text);

            SqlDSnote.Insert();

            TxtNotes.Text = "";
*/
    }

    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    /*

    protected void BtnViewSch_Click(object sender, EventArgs e)
    {
        Session["ID"] = ProID;
        Response.Redirect("Profile_Schedule.aspx");
    }

    */


    protected void btnAcademic1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }

    protected void btnAthletic1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }

    protected void btnNotes1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
        Panel5.Visible = false;
    }


    protected void btnSchedule1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true;
        
    }


    //panel 2
    protected void btnPersonal2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }

    protected void btnAthletic2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }

    protected void btnNotes2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
        Panel5.Visible = false;
    }


    protected void btnSchedule2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true;
    }

    //panel 3

    protected void btnPersonal3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }

    protected void btnAcademic3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }
        
    protected void btnNotes3_Click(object sender, EventArgs e)
    {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = true;
        Panel5.Visible = false;

    }

    protected void btnSchedule3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true;
    }

    //panel 4

    protected void btnNotes4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
        Panel5.Visible = false;
    }

    protected void btnAthletic4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }

    protected void btnAcademic4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }

    protected void btnPersonal4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }

    protected void btnSchedule4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true;
    }

    //panel 5
    protected void btnSchedule5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true;
    }

    protected void btnNotes5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
        Panel5.Visible = false;
    }



    protected void btnAthletic5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }

    protected void btnAcademic5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }

    protected void btnPersonal5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
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