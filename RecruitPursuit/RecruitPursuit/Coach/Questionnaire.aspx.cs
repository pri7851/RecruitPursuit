using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Questionnaire : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    
    protected void ButtonNew_Click(object sender, EventArgs e)
    {
        RadioButtonList1.Visible = true;
        ButtonAdd.Visible = true;
        lblExample.Visible = true;
        TextBoxQuestion.Visible = true;
        Output.Text = "";
        TextBoxQuestion.Visible = true;
        lblAnswer.Visible = true;
        lblQuest.Visible = true;
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "Drop Down List")
        {
            PlaceHolder1.Visible = true;

        }
        else
        {
            PlaceHolder1.Visible = false;
        }
    }
    

    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        
            String conString = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
            SqlConnection con = new SqlConnection(conString);

            //create a command behavior object
            String cmdString = "INSERT INTO [SportQuestions](SportQuestText, AnswerType, AnswerOpt1, AnswerOpt2, AnswerOpt3, AnswerOpt4, AnswerOpt5, AnswerOpt6, AnswerOpt7, AnswerOpt8, AnswerOpt9, AnswerOpt10) " +
            "VALUES (@SportQuestText, @AnswerType, @AnswerOpt1, @AnswerOpt2, @AnswerOpt3, @AnswerOpt4, @AnswerOpt5, @AnswerOpt6, @AnswerOpt7, @AnswerOpt8, @AnswerOpt9, @AnswerOpt10)";
            SqlCommand cmd = new SqlCommand(cmdString, con);

            //create parameter object and add it's value;
            SqlParameter param1 = new SqlParameter();
            param1.ParameterName = "@SportQuestText";
            param1.Value = TextBoxQuestion.Text;
            cmd.Parameters.Add(param1);

            SqlParameter param12 = new SqlParameter();
            param12.ParameterName = "@AnswerType";
            param12.Value = RadioButtonList1.SelectedValue;
            cmd.Parameters.Add(param12);

            SqlParameter param2 = new SqlParameter();
            param2.ParameterName = "@AnswerOpt1";
            param2.Value = TextBoxOpt1.Text;
            cmd.Parameters.Add(param2);

            SqlParameter param3 = new SqlParameter();
            param3.ParameterName = "@AnswerOpt2";
            param3.Value = TextBoxOpt2.Text;
            cmd.Parameters.Add(param3);

            SqlParameter param4 = new SqlParameter();
            param4.ParameterName = "@AnswerOpt3";
            param4.Value = TextBoxOpt3.Text;
            cmd.Parameters.Add(param4);

            SqlParameter param5 = new SqlParameter();
            param5.ParameterName = "@AnswerOpt4";
            param5.Value = TextBoxOpt4.Text;
            cmd.Parameters.Add(param5);

            SqlParameter param6 = new SqlParameter();
            param6.ParameterName = "@AnswerOpt5";
            param6.Value = TextBoxOpt5.Text;
            cmd.Parameters.Add(param6);

            SqlParameter param7 = new SqlParameter();
            param7.ParameterName = "@AnswerOpt6";
            param7.Value = TextBoxOpt6.Text;
            cmd.Parameters.Add(param7);

            SqlParameter param8 = new SqlParameter();
            param8.ParameterName = "@AnswerOpt7";
            param8.Value = TextBoxOpt7.Text;
            cmd.Parameters.Add(param8);

            SqlParameter param9 = new SqlParameter();
            param9.ParameterName = "@AnswerOpt8";
            param9.Value = TextBoxOpt8.Text;
            cmd.Parameters.Add(param9);

            SqlParameter param10 = new SqlParameter();
            param10.ParameterName = "@AnswerOpt9";
            param10.Value = TextBoxOpt9.Text;
            cmd.Parameters.Add(param10);

            SqlParameter param11 = new SqlParameter();
            param11.ParameterName = "@AnswerOpt10";
            param11.Value = TextBoxOpt10.Text;
            cmd.Parameters.Add(param11);

           


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

            ButtonAdd.Visible = false;
            TextBoxQuestion.Text = "";
            TextBoxQuestion.Visible = false;
            PlaceHolder1.Visible = false;
        lblExample.Visible = false;
        TextBoxOpt1.Text = "";
            TextBoxOpt2.Text = "";
            TextBoxOpt3.Text = "";
            TextBoxOpt4.Text = "";
            TextBoxOpt5.Text = "";
            TextBoxOpt6.Text = "";
            TextBoxOpt7.Text = "";
            TextBoxOpt8.Text = "";
            TextBoxOpt9.Text = "";
            TextBoxOpt10.Text = "";
            RadioButtonList1.Visible = false;
            lblAnswer.Visible = false;
            lblQuest.Visible = false;
            GridView1.DataBind();

        
    }



    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}