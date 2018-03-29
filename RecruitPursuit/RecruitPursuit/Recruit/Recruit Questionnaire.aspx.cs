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
        if(Session["SportName"] != null)
        {
            lblSport.Text = Session["SportName"].ToString();
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
        String cmdString = "INSERT INTO [profile](Sport_Id, Rec_FName, Rec_LName, Rec_Email)" + "VALUES (@Sport_Id, @Rec_FName, @Rec_LName, @Rec_Email)";
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