using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Recruit_Questionnaire : System.Web.UI.Page
{
    String sportHasPositions;

    protected void Page_Load(object sender, EventArgs e)
    {
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
            Panel4.Visible = false;

        }

        if (sportHasPositions == "Yes")
        {
            Panel4.Visible = true;

        }

        if (Session["SportName"] != null)
        {
            ((Label)Master.FindControl("LabelSport")).Text = Session["SportName"].ToString();
           
        }

        else
        {
            Response.Redirect("Recruit Sport Selection.aspx");
        }

        
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String conString = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
        SqlConnection con = new SqlConnection(conString);

        //create a command behavior object
        String cmdString = "INSERT INTO [profile](Sport_Id, Rec_FName, Rec_LName, Rec_Address, Rec_City, Rec_State, Rec_Zip, Rec_Country, Rec_Citizen, Rec_Email, Rec_DOB, Rec_HomePhone, Rec_CellPhone, Rec_FatherName, Rec_FatherOcc, Rec_MotherName, Rec_MotherOcc, Rec_App2Cal, Rec_Reg2NCAA, Rec_NCAA_ID, Rec_FAFSA, Rec_HSName, Rec_HSGradYear, Rec_HSGPA, Rec_SAT_Verbal, Rec_SAT_Math, Rec_SAT_Tot, Rec_ACT, Rec_Acad_Honors, Rec_Poss_Major, Rec_JCName, Rec_JC_NumSem, Rec_JCGPA, Rec_JC_Tot_Units, Rec_DateAACompleted, Rec_JC_Coach_Name, Rec_JC_Coach_Email, Rec_JC_Seasons_Played)" +
            "VALUES (@Sport_Id, @Rec_FName, @Rec_LName, @Rec_Address, @Rec_City, @Rec_State, @Rec_Zip, @Rec_Country, @Rec_Citizen, @Rec_Email, @Rec_DOB, @Rec_HomePhone, @Rec_CellPhone, @Rec_FatherName, @Rec_FatherOcc, @Rec_MotherName, @Rec_MotherOcc, @Rec_App2Cal, @Rec_Reg2NCAA, @Rec_NCAA_ID, @Rec_FAFSA, @Rec_HSName, @Rec_HSGradYear, @Rec_HSGPA, @Rec_SAT_Verbal, @Rec_SAT_Math, @Rec_SAT_Tot, @Rec_ACT, @Rec_Acad_Honors, @Rec_Poss_Major, @Rec_JCName, @Rec_JC_NumSem, @Rec_JCGPA, @Rec_JC_Tot_Units, @Rec_DateAACompleted, @Rec_JC_Coach_Name, @Rec_JC_Coach_Email, @Rec_JC_Seasons_Played)";
        SqlCommand cmd = new SqlCommand(cmdString, con);

        
        SqlParameter param1 = new SqlParameter();
        param1.ParameterName = "@Sport_Id";
        param1.Value = Session["Sport_Id"];
        cmd.Parameters.Add(param1);

        SqlParameter param2 = new SqlParameter();
        param2.ParameterName = "@Rec_FName";
        param2.Value = TextBoxFirstName.Text;
        cmd.Parameters.Add(param2);

        SqlParameter param3 = new SqlParameter();
        param3.ParameterName = "@Rec_LName";
        param3.Value = TextBoxLastName.Text;
        cmd.Parameters.Add(param3);

        SqlParameter param4 = new SqlParameter();
        param4.ParameterName = "@Rec_Address";
        param4.Value = TextBoxAddress.Text;
        cmd.Parameters.Add(param4);

        SqlParameter param5 = new SqlParameter();
        param5.ParameterName = "@Rec_City";
        param5.Value = TextBoxCity.Text;
        cmd.Parameters.Add(param5);
        
        SqlParameter param6 = new SqlParameter();
        param6.ParameterName = "@Rec_State";
        param6.Value = TextBoxState.Text;
        cmd.Parameters.Add(param6);

        SqlParameter param7 = new SqlParameter();
        param7.ParameterName = "@Rec_Zip";
        param7.Value = TextBoxZip.Text;
        cmd.Parameters.Add(param7);
        
        SqlParameter param8 = new SqlParameter();
        param8.ParameterName = "@Rec_Country";
        param8.Value = TextBoxCountry.Text;
        cmd.Parameters.Add(param8);

        
        SqlParameter param9 = new SqlParameter();
        param9.ParameterName = "@Rec_Citizen";
        param9.Value = TextBoxCitizen.Text;
        cmd.Parameters.Add(param9);

        
        SqlParameter param10 = new SqlParameter();
        param10.ParameterName = "@Rec_Email";
        param10.Value = TextBoxEmail.Text;
        cmd.Parameters.Add(param10);
        
        SqlParameter param11 = new SqlParameter();
        param11.ParameterName = "@Rec_DOB";
        param11.Value = TextBoxDOB.Text;
        cmd.Parameters.Add(param11);
        
        SqlParameter param12 = new SqlParameter();
        param12.ParameterName = "@Rec_HomePhone";
        param12.Value = TextBoxHomePhone.Text;
        cmd.Parameters.Add(param12);

        SqlParameter param13 = new SqlParameter();
        param13.ParameterName = "@Rec_CellPhone";
        param13.Value = TextBoxCellPhone.Text;
        cmd.Parameters.Add(param13);
        
        SqlParameter param14 = new SqlParameter();
        param14.ParameterName = "@Rec_FatherName";
        param14.Value = TextBoxFatherName.Text;
        cmd.Parameters.Add(param14);

        SqlParameter param15 = new SqlParameter();
        param15.ParameterName = "@Rec_FatherOcc";
        param15.Value = TextBoxFatherOcc.Text;
        cmd.Parameters.Add(param15);
        
        SqlParameter param16 = new SqlParameter();
        param16.ParameterName = "@Rec_MotherName";
        param16.Value = TextBoxMotherName.Text;
        cmd.Parameters.Add(param16);

        SqlParameter param17 = new SqlParameter();
        param17.ParameterName = "@Rec_MotherOcc";
        param17.Value = TextBoxMotherOcc.Text;
        cmd.Parameters.Add(param17);

        SqlParameter param188 = new SqlParameter();
        param188.ParameterName = "@Rec_App2Cal";
        param188.Value = RadioButtonListApplied.SelectedValue;
        cmd.Parameters.Add(param188);

        SqlParameter param189 = new SqlParameter();
        param189.ParameterName = "@Rec_Reg2NCAA";
        param189.Value = RadioButtonNCAA.SelectedValue;
        cmd.Parameters.Add(param189);

        SqlParameter param18 = new SqlParameter();
        param18.ParameterName = "@Rec_NCAA_ID";
        param18.Value = TextBoxNCAAID.Text;
        cmd.Parameters.Add(param18);

        SqlParameter param199 = new SqlParameter();
        param199.ParameterName = "@Rec_FAFSA";
        param199.Value = RadioButtonListFAFSA.SelectedValue;
        cmd.Parameters.Add(param199);

        SqlParameter param19 = new SqlParameter();
        param19.ParameterName = "@Rec_HSName";
        param19.Value = TextBoxHSName.Text;
        cmd.Parameters.Add(param19);

        SqlParameter param20 = new SqlParameter();
        param20.ParameterName = "@Rec_HSGradYear";
        param20.Value = TextBoxHSGradYear.Text;
        cmd.Parameters.Add(param20);

        SqlParameter param21 = new SqlParameter();
        param21.ParameterName = "@Rec_HSGPA";
        param21.Value = TextBoxHSGPA.Text;
        cmd.Parameters.Add(param21);

        SqlParameter param23 = new SqlParameter();
        param23.ParameterName = "@Rec_SAT_Verbal";
        param23.Value = TextBoxSAT_Verb.Text;
        cmd.Parameters.Add(param23);

        SqlParameter param24 = new SqlParameter();
        param24.ParameterName = "@Rec_SAT_Math";
        param24.Value = TextBoxSAT_Math.Text;
        cmd.Parameters.Add(param24);

        SqlParameter param25 = new SqlParameter();
        param25.ParameterName = "@Rec_SAT_Tot";
        param25.Value = TextBoxSAT_Tot.Text;
        cmd.Parameters.Add(param25);

        SqlParameter param26 = new SqlParameter();
        param26.ParameterName = "@Rec_ACT";
        param26.Value = TextBoxACT.Text;
        cmd.Parameters.Add(param26);

        SqlParameter param27 = new SqlParameter();
        param27.ParameterName = "@Rec_Acad_Honors";
        param27.Value = TextBoxAcad_Honors.Text;
        cmd.Parameters.Add(param27);

        SqlParameter param28 = new SqlParameter();
        param28.ParameterName = "@Rec_Poss_Major";
        param28.Value = TextBoxPoss_Major.Text;
        cmd.Parameters.Add(param28);

        SqlParameter param29 = new SqlParameter();
        param29.ParameterName = "@Rec_JCName";
        param29.Value = TextBoxJCName.Text;
        cmd.Parameters.Add(param29);

        SqlParameter param30 = new SqlParameter();
        param30.ParameterName = "@Rec_JC_NumSem";
        param30.Value = TextBoxJC_NumSem.Text;
        cmd.Parameters.Add(param30);

        SqlParameter param31 = new SqlParameter();
        param31.ParameterName = "@Rec_JCGPA";
        param31.Value = TextBoxJCGPA.Text;
        cmd.Parameters.Add(param31);

        SqlParameter param32 = new SqlParameter();
        param32.ParameterName = "@Rec_JC_Tot_Units";
        param32.Value = TextBoxJC_Tot_Units.Text;
        cmd.Parameters.Add(param32);

        SqlParameter param33 = new SqlParameter();
        param33.ParameterName = "@Rec_DateAACompleted";
        param33.Value = TextBoxDateAACompleted.Text;
        cmd.Parameters.Add(param33);

        SqlParameter param34 = new SqlParameter();
        param34.ParameterName = "@Rec_JC_Coach_Name";
        param34.Value = TextBoxJC_Coach_Name.Text;
        cmd.Parameters.Add(param34);

        SqlParameter param35 = new SqlParameter();
        param35.ParameterName = "@Rec_JC_Coach_Email";
        param35.Value = TextBoxJC_Coach_Email.Text;
        cmd.Parameters.Add(param35);

        SqlParameter param36 = new SqlParameter();
        param36.ParameterName = "@Rec_JC_Seasons_Played";
        param36.Value = TextBoxJC_Seasons_Played.Text;
        cmd.Parameters.Add(param36);
        /*
        SqlParameter param37 = new SqlParameter();
        param37.ParameterName = "@PrimaryPosition";
        param37.Value = DropDownListPrimaryPositions.SelectedValue;
        cmd.Parameters.Add(param37);

        SqlParameter param38 = new SqlParameter();
        param38.ParameterName = "@SecondaryPosition";
        param38.Value = DropDownListSecondaryPositions.SelectedValue;
        cmd.Parameters.Add(param38);*/

        int added = 0;
        try
        {
            con.Open();
            added = cmd.ExecuteNonQuery();
        }

        catch (Exception err)
        {
            Output.Text = err.Message;
        }

        finally
        {
            con.Close();
          
        }
          Output.Text = "Added.";

        Panel3.Visible = false;
        Panel5.Visible = true;
       
       
    }



    protected void btnNext1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
    }

    protected void btnBack1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    }
    protected void btnNext2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
    }

    

    protected void Back2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        
    }
}