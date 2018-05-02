using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc.Ajax;
using AjaxControlToolkit;


public partial class Profile_Page : System.Web.UI.Page
{
    bool hide = false;
    bool show = true;
    int ID;
    int ProID;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack)
        {
            using (SqlConnection dataConnection = new SqlConnection(@"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8"))
            using (SqlCommand dataCommand =
                    new SqlCommand("insert StarRating from profile Where StarRating = @StarRating and Pro_Id = @Pro_Id", dataConnection))

            {
                dataConnection.Open();
                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@Pro_Id";
                param2.Value = Request.QueryString["Pro_Id"];
                dataCommand.Parameters.Add(param2);

                string value = SliderValue.Text;

                if (value == "1")
                {
                    PanelStar1.Visible = true;
                    PanelStar2.Visible = false;
                    PanelStar3.Visible = false;
                    PanelStar4.Visible = false;
                    PanelStar5.Visible = false;

                    SqlParameter param1 = new SqlParameter();
                    param1.ParameterName = "@StarRating";
                    param1.Value = value;
                    dataCommand.Parameters.Add(param1);
                }

                if (value == "2")
                {
                    PanelStar1.Visible = false;
                    PanelStar2.Visible = true;
                    PanelStar3.Visible = false;
                    PanelStar4.Visible = false;
                    PanelStar5.Visible = false;
                    SqlParameter param1 = new SqlParameter();
                    param1.ParameterName = "@StarRating";
                    param1.Value = value;
                    dataCommand.Parameters.Add(param1);
                }

                if (value == "3")
                {
                    PanelStar1.Visible = false;
                    PanelStar2.Visible = false;
                    PanelStar3.Visible = true;
                    PanelStar4.Visible = false;
                    PanelStar5.Visible = false;
                    SqlParameter param1 = new SqlParameter();
                    param1.ParameterName = "@StarRating";
                    param1.Value = value;
                    dataCommand.Parameters.Add(param1);
                }

                if (value == "4")
                {
                    PanelStar1.Visible = false;
                    PanelStar2.Visible = false;
                    PanelStar3.Visible = false;
                    PanelStar4.Visible = true;
                    PanelStar5.Visible = false;
                    SqlParameter param1 = new SqlParameter();
                    param1.ParameterName = "@StarRating";
                    param1.Value = value;
                    dataCommand.Parameters.Add(param1);
                }

                if (value == "5")
                {
                    PanelStar1.Visible = false;
                    PanelStar2.Visible = false;
                    PanelStar3.Visible = false;
                    PanelStar4.Visible = false;
                    PanelStar5.Visible = true;
                    SqlParameter param1 = new SqlParameter();
                    param1.ParameterName = "@StarRating";
                    param1.Value = value;
                    dataCommand.Parameters.Add(param1);
                }
                //LastUpdate.Text = "Last update: " + DateTime.Now.ToLongTimeString();
            }

            if (Session["ID"] != null)
            {
                ID = int.Parse(Session["Pro_Id"].ToString());
            }

            else if (Request.QueryString["Pro_Id"] != null)
            {
                ProID = int.Parse(Request.QueryString["Pro_Id"].ToString());

            }

            else
            {
                Response.Write("Invalid access to page!");
                Response.End();
            }

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
    

       



        SqlDSnote.InsertCommandType = SqlDataSourceCommandType.Text;
        SqlDSnote.InsertCommand = "Insert into Notes (Pro_Id,NPost_date,Note) VALUES (@Pro_id,@NPost_date,@Note)";

        SqlDSnote.InsertParameters.Add("Pro_id", Request.QueryString["Pro_id"]);
        SqlDSnote.InsertParameters.Add("NPost_date", DateTime.Now.ToString());
        SqlDSnote.InsertParameters.Add("Note", TxtNotes.Text);

        SqlDSnote.Insert();

        TxtNotes.Text = "";

    }

    protected void Rec_Rating_Changed (object sender, EventArgs e) {

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
            //Hidebtn.Visible = true;


        }
    }

  

    


    protected void Insertdatabtn_click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
        SqlDataSource1.InsertCommand = "Insert into Schedule (Pro_id, Tournament, Location, StartDate, EndDate, Time, Team) VALUES (@Pro_id, @Tournament, @Location, @StartDate, @EndDate, @Time, @Team )";

        SqlDataSource1.InsertParameters.Add("Pro_id", Convert.ToString(Request.QueryString["Pro_Id"]));
        SqlDataSource1.InsertParameters.Add("Tournament", TmentTxt.Text);
        SqlDataSource1.InsertParameters.Add("Location", LocationTxt.Text);
        SqlDataSource1.InsertParameters.Add("StartDate", StartDateTxt.Text);
        SqlDataSource1.InsertParameters.Add("EndDate", EndDateTxt.Text);
        SqlDataSource1.InsertParameters.Add("Time", TimeTxt.Text);
        SqlDataSource1.InsertParameters.Add("Team", TeamTxt.Text);

        SqlDataSource1.Insert();

        TmentTxt.Text = "";
        LocationTxt.Text = "";
        StartDateTxt.Text = "";
        EndDateTxt.Text = "";
        TimeTxt.Text = "";
        TeamTxt.Text = "";

        AddSchTbl.Visible = false;
        GridView2.DataBind();
    }






}