using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;
using System.Text;


public partial class Coach_Positions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    
    private static int x = 0;
    protected void BtnShow_Click(object sender, EventArgs e)
    {
        PlaceHolder2.Visible = true;
        
        if (x == 1)
        {
            PlaceHolder3.Visible = true;
        }

        x++;


    }

    protected void btnLess_Click(object sender, EventArgs e)
    {
        PlaceHolder3.Visible = false;

        if (x == 1)
        {
            PlaceHolder2.Visible = false;
        }

        x--;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        String conString = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
        SqlConnection con = new SqlConnection(conString);

        //create a command behavior object
        String cmdString = "INSERT INTO [Positions](Sport_ID, Position)" +
        "VALUES (@Sport_ID, @Position1), (@Sport_ID, @Position2), (@Sport_ID, @Position3), (@Sport_ID, @Position4), (@Sport_ID, @Position5), (@Sport_ID, @Position6), (@Sport_ID, @Position7), (@Sport_ID, @Position8)";
        SqlCommand cmd = new SqlCommand(cmdString, con);

        SqlParameter param0 = new SqlParameter();
        param0.ParameterName = "@Sport_Id";
        param0.Value = Session["SportID"];
        cmd.Parameters.Add(param0);

        SqlParameter param1 = new SqlParameter();
        param1.ParameterName = "@Position1";
        param1.Value = TextBoxOpt1.Text;
        cmd.Parameters.Add(param1);

        SqlParameter param2 = new SqlParameter();
        param2.ParameterName = "@Position2";
        param2.Value = TextBoxOpt2.Text;
        cmd.Parameters.Add(param2);

        SqlParameter param3 = new SqlParameter();
        param3.ParameterName = "@Position3";
        param3.Value = TextBoxOpt3.Text;
        cmd.Parameters.Add(param3);

        SqlParameter param4 = new SqlParameter();
        param4.ParameterName = "@Position4";
        param4.Value = TextBoxOpt4.Text;
        cmd.Parameters.Add(param4);

        SqlParameter param5 = new SqlParameter();
        param5.ParameterName = "@Position5";
        param5.Value = TextBoxOpt5.Text;
        cmd.Parameters.Add(param5);

        SqlParameter param6 = new SqlParameter();
        param6.ParameterName = "@Position6";
        param6.Value = TextBoxOpt6.Text;
        cmd.Parameters.Add(param6);

        SqlParameter param7 = new SqlParameter();
        param7.ParameterName = "@Position7";
        param7.Value = TextBoxOpt7.Text;
        cmd.Parameters.Add(param7);

        SqlParameter param8 = new SqlParameter();
        param8.ParameterName = "@Position8";
        param8.Value = TextBoxOpt8.Text;
        cmd.Parameters.Add(param8);

        int added = 0;
        try
        {
            con.Open();
            added = cmd.ExecuteNonQuery();
        }

        catch (Exception err)
        {
           // Output.Text = err.Message;
        }

        finally
        {
            con.Close();
        }

        Response.Redirect("Questionnaire.aspx");
    }
}