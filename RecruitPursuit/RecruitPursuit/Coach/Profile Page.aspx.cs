﻿using System;
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
    String sportHasPositions;
    String starValue;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //This section is supposed to pull the star rating from the database and show the right panel
            String constring = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
            String cmdString = "SELECT [StarRating] FROM [profile] WHERE ([Pro_Id] = @Pro_Id)";
            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand(cmdString, con);
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Pro_Id", Request.QueryString["Pro_Id"].ToString());
            con.Open();
            String star_rating = cmd.ExecuteScalar().ToString();

            String current_rating = star_rating;

            //Slider1.Text;

            // = star_rating.ToString();

            Label2.Text = current_rating;

            if (current_rating == "1")
            {

                PanelStar1.Visible = true;
                PanelStar2.Visible = false;
                PanelStar3.Visible = false;
                PanelStar4.Visible = false;
                PanelStar5.Visible = false;

            }
            if (current_rating == "2")
            {

                PanelStar1.Visible = false;
                PanelStar2.Visible = true;
                PanelStar3.Visible = false;
                PanelStar4.Visible = false;
                PanelStar5.Visible = false;

            }
            if (current_rating == "3")
            {

                PanelStar1.Visible = false;
                PanelStar2.Visible = false;
                PanelStar3.Visible = true;
                PanelStar4.Visible = false;
                PanelStar5.Visible = false;

            }
            if (current_rating == "4")
            {

                PanelStar1.Visible = false;
                PanelStar2.Visible = false;
                PanelStar3.Visible = false;
                PanelStar4.Visible = true;
                PanelStar5.Visible = false;

            }
            if (current_rating == "5")
            {

                PanelStar1.Visible = false;
                PanelStar2.Visible = false;
                PanelStar3.Visible = false;
                PanelStar4.Visible = false;
                PanelStar5.Visible = true;


            }
            Slider1.Text = current_rating;
            con.Close();
        }

        if (Page.IsPostBack)
        {
           /* String constring = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
            String cmdString = "SELECT [StarRating] FROM [profile] WHERE ([Pro_Id] = @Pro_Id)";
            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand(cmdString, con);
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Pro_Id", Request.QueryString["Pro_Id"].ToString());
            con.Open();
            String star_rating = cmd.ExecuteScalar().ToString();

            String current_rating = star_rating;
            */
            String rating = Slider1.Text;

            // = star_rating.ToString();

            //Label2.Text = current_rating;

            if (rating == "1")
            {

                PanelStar1.Visible = true;
                PanelStar2.Visible = false;
                PanelStar3.Visible = false;
                PanelStar4.Visible = false;
                PanelStar5.Visible = false;


            }
            if (rating == "2")
            {

                PanelStar1.Visible = false;
                PanelStar2.Visible = true;
                PanelStar3.Visible = false;
                PanelStar4.Visible = false;
                PanelStar5.Visible = false;

            }
            if (rating == "3")
            {

                PanelStar1.Visible = false;
                PanelStar2.Visible = false;
                PanelStar3.Visible = true;
                PanelStar4.Visible = false;
                PanelStar5.Visible = false;

            }
            if (rating == "4")
            {

                PanelStar1.Visible = false;
                PanelStar2.Visible = false;
                PanelStar3.Visible = false;
                PanelStar4.Visible = true;
                PanelStar5.Visible = false;

            }
            if (rating == "5")
            {

                PanelStar1.Visible = false;
                PanelStar2.Visible = false;
                PanelStar3.Visible = false;
                PanelStar4.Visible = false;
                PanelStar5.Visible = true;

            }

           // con.Close();
        }
        
        
        /* using (SqlConnection dataConnection = new SqlConnection(@"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8"))
             using (SqlCommand dataCommand =
             new SqlCommand("SELECT StarRating FROM profile WHERE Pro_Id = @Pro_Id", dataConnection))

             {
                 dataConnection.Open();
                 SqlParameter param2 = new SqlParameter();
                 param2.ParameterName = "@Pro_Id";
                 param2.Value = Request.QueryString["Pro_Id"].ToString(); ;
                 dataCommand.Parameters.Add(param2);

                 starValue = dataCommand.ExecuteScalar().ToString();

             }

             if (starValue == "1")
             {
                 PanelStar1.Visible = true;
                 PanelStar2.Visible = false;
                 PanelStar3.Visible = false;
                 PanelStar4.Visible = false;
                 PanelStar5.Visible = false;

             }

             if (starValue == "2")
             {
                 PanelStar1.Visible = false;
                 PanelStar2.Visible = true;
                 PanelStar3.Visible = false;
                 PanelStar4.Visible = false;
                 PanelStar5.Visible = false;

             }

             if (starValue == "3")
             {
                 PanelStar1.Visible = false;
                 PanelStar2.Visible = false;
                 PanelStar3.Visible = true;
                 PanelStar4.Visible = false;
                 PanelStar5.Visible = false;

             }

             if (starValue == "4")
             {
                 PanelStar1.Visible = false;
                 PanelStar2.Visible = false;
                 PanelStar3.Visible = false;
                 PanelStar4.Visible = true;
                 PanelStar5.Visible = false;


             }

             if (starValue == "5")
             {
                 PanelStar1.Visible = false;
                 PanelStar2.Visible = false;
                 PanelStar3.Visible = false;
                 PanelStar4.Visible = false;
                 PanelStar5.Visible = true;

             }

             Panel6.Visible = false; */


        //This section is supposed to update the database when the slider changes

        
            
           /*
            String value = SliderValue.Text;
            using (SqlConnection dataConnection = new SqlConnection(@"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8"))

            using (SqlCommand dataCommand =
            new SqlCommand("UPDATE profile Set StarRating = @StarRating WHERE Pro_Id = @Pro_Id", dataConnection))

                
            {
                

                if (value == "1")
                {
                    PanelStar1.Visible = true;
                    PanelStar2.Visible = false;
                    PanelStar3.Visible = false;
                    PanelStar4.Visible = false;
                    PanelStar5.Visible = false;

                    SqlParameter param0 = new SqlParameter();
                    param0.ParameterName = "@Pro_Id";
                    param0.Value = Request.QueryString["Pro_Id"];
                    dataCommand.Parameters.Add(param0);

                    SqlParameter param1 = new SqlParameter();
                    param1.ParameterName = "@StarRating";
                    param1.Value = "1";
                    dataCommand.Parameters.Add(param1);
                }


                if (value == "2")
                {
                    PanelStar1.Visible = false;
                    PanelStar2.Visible = true;
                    PanelStar3.Visible = false;
                    PanelStar4.Visible = false;
                    PanelStar5.Visible = false;


                    SqlParameter param0 = new SqlParameter();
                    param0.ParameterName = "@Pro_Id";
                    param0.Value = Request.QueryString["Pro_Id"];
                    dataCommand.Parameters.Add(param0);

                    SqlParameter param1 = new SqlParameter();
                    param1.ParameterName = "@StarRating";
                    param1.Value = "2";
                    dataCommand.Parameters.Add(param1);
                }


                if (value == "3")
                {
                    PanelStar1.Visible = false;
                    PanelStar2.Visible = false;
                    PanelStar3.Visible = true;
                    PanelStar4.Visible = false;
                    PanelStar5.Visible = false;

                    SqlParameter param0 = new SqlParameter();
                    param0.ParameterName = "@Pro_Id";
                    param0.Value = Request.QueryString["Pro_Id"];
                    dataCommand.Parameters.Add(param0);

                    SqlParameter param1 = new SqlParameter();
                    param1.ParameterName = "@StarRating";
                    param1.Value = "3";
                    dataCommand.Parameters.Add(param1);
                }

                if (value == "4")
                {
                    PanelStar1.Visible = false;
                    PanelStar2.Visible = false;
                    PanelStar3.Visible = false;
                    PanelStar4.Visible = true;
                    PanelStar5.Visible = false;

                    SqlParameter param0 = new SqlParameter();
                    param0.ParameterName = "@Pro_Id";
                    param0.Value = Request.QueryString["Pro_Id"];
                    dataCommand.Parameters.Add(param0);

                    SqlParameter param1 = new SqlParameter();
                    param1.ParameterName = "@StarRating";
                    param1.Value = "4";
                    dataCommand.Parameters.Add(param1);

                }

                if (value == "5")
                {
                    PanelStar1.Visible = false;
                    PanelStar2.Visible = false;
                    PanelStar3.Visible = false;
                    PanelStar4.Visible = false;
                    PanelStar5.Visible = true;

                    SqlParameter param0 = new SqlParameter();
                    param0.ParameterName = "@Pro_Id";
                    param0.Value = Request.QueryString["Pro_Id"];
                    dataCommand.Parameters.Add(param0);

                    SqlParameter param1 = new SqlParameter();
                    param1.ParameterName = "@StarRating";
                    param1.Value = "5";
                    dataCommand.Parameters.Add(param1);
                }
            } */


         

        using (SqlConnection dataConnection = new SqlConnection(@"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8"))
        using (SqlCommand dataCommand =
                new SqlCommand("select SportHasPositions from Sport Where Sport_Id = @Sport_Id", dataConnection))

        {
            dataConnection.Open();
            SqlParameter param2 = new SqlParameter();
            param2.ParameterName = "@Sport_Id";
            param2.Value = Session["Sport_Id"];
            dataCommand.Parameters.Add(param2);

            sportHasPositions = dataCommand.ExecuteScalar().ToString();
        }


        if (sportHasPositions == "No")
        {
            DataListPositions.Visible = false;

        }

        if (sportHasPositions == "Yes")
        {
            DataListPositions.Visible = true;

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

    protected void Rec_Rating_Changed(object sender, EventArgs e)
    {

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







   

    protected void btnDelete2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = true;
        btnDelete2.Visible = false;
        PanelStarRatings.Visible = false;
    }

   
    protected void btnPersonal1_Click(object sender, EventArgs e)
    {

    }

    protected void btnDeleteCancel_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        btnDelete2.Visible = true;
        PanelStarRatings.Visible = true;
    }

    protected void btnDeleteConfirm_Click(object sender, EventArgs e)
    {
        SqlDataSource7.DeleteCommandType = SqlDataSourceCommandType.Text;
        SqlDataSource7.DeleteCommand = "DELETE FROM dbo.profile WHERE (Pro_Id = @Pro_Id)";
        SqlDataSource7.DeleteParameters.Add("Pro_Id", Request.QueryString["Pro_Id"]);
        SqlDataSource7.Delete();
        Response.Redirect("Home.aspx");
    }

    protected void Slider1_TextChanged(object sender, EventArgs e)
    {
        String constring = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
        String cmdString = "UPDATE profile Set StarRating = @StarRating WHERE Pro_Id = @Pro_Id";
        SqlConnection con = new SqlConnection(constring);
        SqlCommand cmd = new SqlCommand(cmdString, con);
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@StarRating", Slider1.Text);
        cmd.Parameters.AddWithValue("@Pro_Id", Request.QueryString["Pro_Id"].ToString());
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
       
    }
}