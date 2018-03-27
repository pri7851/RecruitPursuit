using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Recruit_Questionnaire : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblSport.Text = Session["SportName"].ToString();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String conString = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
        SqlConnection con = new SqlConnection(conString);

        //create a command behavior object
        String cmdString = "INSERT INTO [profile](Sport_Id, Rec_FName, Rec_LName, Rec_Email,)"
            + "VALUES (@Sport_Id, @Rec_FName, @Rec_LName, @Rec_Email)";
        SqlCommand cmd = new SqlCommand(cmdString, con);

    
        //create parameter object and add it's value;
        SqlParameter param1 = new SqlParameter();
        param1.ParameterName = "@Sport_Id";
        param1.Value = Session["SportID"];
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
        param4.ParameterName = "@Rec_Email";
        param4.Value = TextBoxEmail.Text;
        cmd.Parameters.Add(param4);

        /*Rec_Address, Rec_City, Rec_State, Rec_Zip. Rec_Country, Rec_DOB, Rec_HomePhone, Rec_CellPhone, Rec_FatherName, Rec_FatherOcc, Rec_MotherName, Rec_MotherOcc, Rec_App2Cal, Rec_Reg2NCAA, Rec_NCAA_ID, Rec_FAFSA, Rec_HSName, Rec_HSGradYear, Rec_HSGPA, )" 
        SqlParameter param5 = new SqlParameter();
        param5.ParameterName = "@Rec_Address";
        param5.Value = TextBoxAddress.Text;
        cmd.Parameters.Add(param5);

        SqlParameter param6 = new SqlParameter();
        param6.ParameterName = "@Rec_City";
        param6.Value = TextBoxCity.Text;
        cmd.Parameters.Add(param6);

        SqlParameter param7 = new SqlParameter();
        param7.ParameterName = "@Rec_State";
        param7.Value = TextBoxState.Text;
        cmd.Parameters.Add(param7);

        SqlParameter param8 = new SqlParameter();
        param8.ParameterName = "@Rec_Zip";
        param8.Value = TextBoxZip.Text;
        cmd.Parameters.Add(param8);

        SqlParameter param9 = new SqlParameter();
        param9.ParameterName = "@Rec_Country";
        param9.Value = TextBoxCountry.Text;
        cmd.Parameters.Add(param9);

        SqlParameter param10 = new SqlParameter();
        param10.ParameterName = "@Rec_DOB";
        param10.Value = TextBoxDOB.Text;
        cmd.Parameters.Add(param10);

        SqlParameter param11 = new SqlParameter();
        param11.ParameterName = "@Rec_HomePhone";
        param11.Value = TextBoxHomePhone.Text;
        cmd.Parameters.Add(param11);

        SqlParameter param12 = new SqlParameter();
        param12.ParameterName = "@Rec_CellPhone";
        param12.Value = TextBoxCellPhone.Text;
        cmd.Parameters.Add(param12);

        SqlParameter param13 = new SqlParameter();
        param13.ParameterName = "@Rec_FatherName";
        param13.Value = TextBoxFatherName.Text;
        cmd.Parameters.Add(param13);

        SqlParameter param14 = new SqlParameter();
        param14.ParameterName = "@Rec_FatherOcc";
        param14.Value = TextBoxFatherOcc.Text;
        cmd.Parameters.Add(param14);

        SqlParameter param15 = new SqlParameter();
        param15.ParameterName = "@Rec_MotherName";
        param15.Value = TextBoxMotherName.Text;
        cmd.Parameters.Add(param15);

        SqlParameter param16 = new SqlParameter();
        param16.ParameterName = "@Rec_MotherOcc";
        param16.Value = TextBoxMotherOcc.Text;
        cmd.Parameters.Add(param16);

        /*Spot for applied to cal
        SqlParameter param = new SqlParameter();
        param.ParameterName = "@Rec_";
        param.Value = TextBox.Text;
        cmd.Parameters.Add(param);*/

        /*Spot for registered to NCAA
        SqlParameter param = new SqlParameter();
        param.ParameterName = "@Rec_";
        param.Value = TextBox.Text;
        cmd.Parameters.Add(param);*/

        /*Spot for applied to cal
        SqlParameter param = new SqlParameter();
        param.ParameterName = "@Rec_";
        param.Value = TextBox.Text;
        cmd.Parameters.Add(param);*/

        /*Spot for NCAAID
        SqlParameter param = new SqlParameter();
        param.ParameterName = "@Rec_";
        param.Value = TextBox.Text;
        cmd.Parameters.Add(param);*/

        /*Spot for FAFSA
        SqlParameter param = new SqlParameter();
        param.ParameterName = "@Rec_";
        param.Value = TextBox.Text;
        cmd.Parameters.Add(param);

        SqlParameter param22 = new SqlParameter();
        param22.ParameterName = "@Rec_HSName";
        param22.Value = TextBoxHSName.Text;
        cmd.Parameters.Add(param22);

        SqlParameter param23 = new SqlParameter();
        param23.ParameterName = "@Rec_HSGradYear";
        param23.Value = TextBoxHSGradYear.Text;
        cmd.Parameters.Add(param23);


        SqlParameter param24 = new SqlParameter();
        param24.ParameterName = "@Rec_HSGPA";
        param24.Value = TextBoxHSGPA.Text;
        cmd.Parameters.Add(param24);

        SqlParameter param25 = new SqlParameter();
        param25.ParameterName = "@Rec_SAT_Verbal";
        param25.Value = TextBoxSAT_Verb.Text;
        cmd.Parameters.Add(param25);

        SqlParameter param26 = new SqlParameter();
        param26.ParameterName = "@Rec_SAT_Math";
        param26.Value = TextBoxSAT_Math.Text;
        cmd.Parameters.Add(param26);

        SqlParameter param27 = new SqlParameter();
        param27.ParameterName = "@Rec_SAT_Tot";
        param27.Value = TextBoxSAT_Tot.Text;
        cmd.Parameters.Add(param27);

        SqlParameter param28 = new SqlParameter();
        param28.ParameterName = "@Rec_ACT";
        param28.Value = TextBoxACT.Text;
        cmd.Parameters.Add(param28);

        SqlParameter param29 = new SqlParameter();
        param29.ParameterName = "@Rec_Acad_Honors";
        param29.Value = TextBoxAcad_Honors.Text;
        cmd.Parameters.Add(param29);

        SqlParameter param30 = new SqlParameter();
        param30.ParameterName = "@Rec_Poss_Major";
        param30.Value = TextBoxPoss_Major.Text;
        cmd.Parameters.Add(param30);

        SqlParameter param31 = new SqlParameter();
        param31.ParameterName = "@Rec_JCName";
        param31.Value = TextBoxJCName.Text;
        cmd.Parameters.Add(param31);

        SqlParameter param32 = new SqlParameter();
        param32.ParameterName = "@Rec_JC_NumSem";
        param32.Value = TextBoxJC_NumSem.Text;
        cmd.Parameters.Add(param32);

        SqlParameter param33 = new SqlParameter();
        param33.ParameterName = "@Rec_JCGPA";
        param33.Value = TextBoxJCGPA.Text;
        cmd.Parameters.Add(param33);

        SqlParameter param34 = new SqlParameter();
        param34.ParameterName = "@Rec_JC_Tot_Units";
        param34.Value = TextBoxJC_Tot_Units.Text;
        cmd.Parameters.Add(param34);

        SqlParameter param35 = new SqlParameter();
        param35.ParameterName = "@Rec_DateAACompleted";
        param35.Value = TextBoxDateAACompleted.Text;
        cmd.Parameters.Add(param35);

        SqlParameter param36 = new SqlParameter();
        param36.ParameterName = "@Rec_JC_Coach_Name";
        param36.Value = TextBoxJC_Coach_Name.Text;
        cmd.Parameters.Add(param36);

        SqlParameter param37 = new SqlParameter();
        param37.ParameterName = "@Rec_JC_Coach_Email";
        param37.Value = TextBoxJC_Coach_Email.Text;
        cmd.Parameters.Add(param37);

        SqlParameter param38 = new SqlParameter();
        param38.ParameterName = "@Rec_JC_Seasons_Played";
        param38.Value = TextBoxJC_Seasons_Played.Text;
        cmd.Parameters.Add(param38); */


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
        GridView1.DataBind();
    }

   
}