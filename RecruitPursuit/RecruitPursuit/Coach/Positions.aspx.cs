using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;




public partial class Coach_Positions : System.Web.UI.Page
{
    object nullableValue;
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection dataConnection = new SqlConnection(@"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8"))
        using (SqlCommand dataCommand =
                new SqlCommand("select Position from Positions Where Sport_Id = @Sport_Id", dataConnection))

        {
            dataConnection.Open();
            SqlParameter param2 = new SqlParameter();
            param2.ParameterName = "@Sport_Id";
            param2.Value = Session["Sport_Id"];
            dataCommand.Parameters.Add(param2);

            nullableValue = dataCommand.ExecuteScalar();
            if (nullableValue == null)// || nullableValue == DBNull.Value)
            {
                Panel2.Visible = false;
               // btnAdd.Visible = true;
            }
        }
    }

    
    


    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            String conString = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
            SqlConnection con = new SqlConnection(conString);

            //create a command behavior object
            String cmdString = "UPDATE Sport SET SportHasPositions = @SportHasPositions WHERE Sport_Id = @Sport_Id";
            SqlCommand cmd = new SqlCommand(cmdString, con);

            SqlParameter param0 = new SqlParameter();
            param0.ParameterName = "@SportHasPositions";
            param0.Value = "No";
            cmd.Parameters.Add(param0);

            SqlParameter param1 = new SqlParameter();
            param1.ParameterName = "@Sport_Id";
            param1.Value = Session["Sport_Id"];
            cmd.Parameters.Add(param1);

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

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        String conString = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
        SqlConnection con = new SqlConnection(conString);

        //create a command behavior object
        String cmdString = "INSERT INTO [Positions](Sport_Id, Position)" +
        "VALUES (@Sport_Id, @Position)";
        SqlCommand cmd = new SqlCommand(cmdString, con);

        SqlParameter param0 = new SqlParameter();
        param0.ParameterName = "@Sport_Id";
        param0.Value = Session["Sport_Id"];
        cmd.Parameters.Add(param0);

        SqlParameter param1 = new SqlParameter();
        param1.ParameterName = "@Position";
        param1.Value = TextBoxPosition.Text;
        cmd.Parameters.Add(param1);

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
        TextBoxPosition.Text = "";
        Panel2.Visible = true;
        GridView1.DataBind();
    }

    protected void btnDone_Click(object sender, EventArgs e)
    {
        Response.Redirect("Questionnaire.aspx");
    }
}