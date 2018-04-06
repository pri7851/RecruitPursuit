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
        ButtonAdd.Visible = true;
        lblExample.Visible = true;
        TextBoxQuestion.Visible = true;
        Output.Text = "";
        TextBoxQuestion.Visible = true;
         lblQuest.Visible = true;
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    

    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        
            String conString = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
            SqlConnection con = new SqlConnection(conString);

            //create a command behavior object
            String cmdString = "INSERT INTO [SportQuestions](Sport_Id, SportQuestText)" +
            "VALUES (@Sport_Id, @SportQuestText)";
            SqlCommand cmd = new SqlCommand(cmdString, con);

            //create parameter object and add it's value;
            SqlParameter param1 = new SqlParameter();
            param1.ParameterName = "@Sport_Id";
            param1.Value = Session["SportID"];
            cmd.Parameters.Add(param1);

            SqlParameter param12 = new SqlParameter();
            param12.ParameterName = "@SportQuestText";
            param12.Value = TextBoxQuestion.Text;
            cmd.Parameters.Add(param12);

            
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
            lblExample.Visible = false;
            lblQuest.Visible = false;
            GridView2.DataBind();
                    
    }



    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }





    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}