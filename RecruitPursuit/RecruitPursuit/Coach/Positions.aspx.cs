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
        String cmdString = "INSERT INTO [Positions]( Sport_ID, Position)" +
        "VALUES (@Sport_ID, @Position1), (@Sport_ID, @Position2), (@Sport_ID, @Position3), (@Sport_ID, @Position4), (@Sport_ID, @Position5), (@Sport_ID, @Position6), (@Sport_ID, @Position7), (@Sport_ID, @Position8), (@Sport_ID, @Position9), (@Sport_ID, @Position10), (@Sport_ID, @Position11), (@Sport_ID, @Position12), (@Sport_ID, @Position13), (@Sport_ID, @Position14), (@Sport_ID, @Position15), (@Sport_ID, @Position16), (@Sport_ID, @Position17), (@Sport_ID, @Position18), (@Sport_ID, @Position19), (@Sport_ID, @Position20), (@Sport_ID, @Position21), (@Sport_ID, @Position22), (@Sport_ID, @Position23), (@Sport_ID, @Position24), (@Sport_ID, @Position25), (@Sport_ID, @Position26), (@Sport_ID, @Position27), (@Sport_ID, @Position28), (@Sport_ID, @Position29), (@Sport_ID, @Position30)";
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

        if (TextBoxOpt2.Text != String.Empty)
        {
            
            param2.Value = TextBoxOpt2.Text;
           
        }

        if (TextBoxOpt2.Text == String.Empty)
        {
           
            param2.Value = "null";
            
            //cmd.Parameters.AddWithValue("@Position2", param2==null ? (object)DBNull.Value : param2);
        }
        cmd.Parameters.Add(param2);


        SqlParameter param3 = new SqlParameter();
        param3.ParameterName = "@Position3";
        if (TextBoxOpt3.Text != String.Empty)
        {
            param3.Value = TextBoxOpt3.Text;
        }

        if (TextBoxOpt3.Text == String.Empty)
        {
            param3.Value = "null";
        }
         cmd.Parameters.Add(param3);

        SqlParameter param4 = new SqlParameter();
        param4.ParameterName = "@Position4";
        param4.Value = TextBoxOpt4.Text;
      
        if (TextBoxOpt4.Text != String.Empty)
        {
            param4.Value = TextBoxOpt4.Text;
        }
        if (TextBoxOpt4.Text == String.Empty)
        {
            param4.Value = "null";
        }
        cmd.Parameters.Add(param4);

        SqlParameter param5 = new SqlParameter();
        param5.ParameterName = "@Position5";
        param5.Value = TextBoxOpt5.Text;
        if (TextBoxOpt5.Text != String.Empty)
        {
            param5.Value = TextBoxOpt5.Text;
        }
        if (TextBoxOpt5.Text == String.Empty)
        {
            param5.Value = "null";
        }
        cmd.Parameters.Add(param5);

        SqlParameter param6 = new SqlParameter();
        param6.ParameterName = "@Position6";
        param6.Value = TextBoxOpt6.Text;
        if (TextBoxOpt6.Text != String.Empty)
        {
            param6.Value = TextBoxOpt6.Text;
        }
        if (TextBoxOpt6.Text == String.Empty)
        {
            param6.Value = "null";
        }
        cmd.Parameters.Add(param6);

        SqlParameter param7 = new SqlParameter();
        param7.ParameterName = "@Position7";
        param7.Value = TextBoxOpt7.Text;
          if (TextBoxOpt7.Text != String.Empty)
        {
            param7.Value = TextBoxOpt7.Text;
        }
        if (TextBoxOpt7.Text == String.Empty)
        {
            param7.Value = "null";
        }
        cmd.Parameters.Add(param7);


        SqlParameter param8 = new SqlParameter();
        param8.ParameterName = "@Position8";
        param8.Value = TextBoxOpt8.Text;
        if (TextBoxOpt8.Text != String.Empty)
        {
            param8.Value = TextBoxOpt8.Text;
        }
        if (TextBoxOpt8.Text == String.Empty)
        {
            param8.Value = "null";
        }
        cmd.Parameters.Add(param8);

        SqlParameter param9 = new SqlParameter();
        param9.ParameterName = "@Position9";
        param9.Value = TextBoxOpt9.Text;
        if (TextBoxOpt9.Text != String.Empty)
        {
            param9.Value = TextBoxOpt9.Text;
        }
        if (TextBoxOpt9.Text == String.Empty)
        {
            param9.Value = "null";
        }
        cmd.Parameters.Add(param9);

        SqlParameter param10 = new SqlParameter();
        param10.ParameterName = "@Position10";
        param10.Value = TextBoxOpt10.Text;
        if (TextBoxOpt10.Text != String.Empty)
        {
            param10.Value = TextBoxOpt10.Text;
        }
        if (TextBoxOpt10.Text == String.Empty)
        {
            param10.Value = "null";
        }
        cmd.Parameters.Add(param10);

        SqlParameter param11 = new SqlParameter();
        param11.ParameterName = "@Position11";
        param11.Value = TextBoxOpt11.Text;
        if (TextBoxOpt11.Text != String.Empty)
        {
            param11.Value = TextBoxOpt11.Text;
        }
        if (TextBoxOpt11.Text == String.Empty)
        {
            param11.Value = "null";
        }
        cmd.Parameters.Add(param11);

        SqlParameter param12 = new SqlParameter();
        param12.ParameterName = "@Position12";
        param12.Value = TextBoxOpt12.Text;
        if (TextBoxOpt12.Text != String.Empty)
        {
            param12.Value = TextBoxOpt12.Text;
        }
        if (TextBoxOpt12.Text == String.Empty)
        {
            param12.Value = "null";
        }
        cmd.Parameters.Add(param12);

        SqlParameter param13 = new SqlParameter();
        param13.ParameterName = "@Position13";
        param13.Value = TextBoxOpt13.Text;
        if (TextBoxOpt13.Text != String.Empty)
        {
            param13.Value = TextBoxOpt13.Text;
        }
        if (TextBoxOpt13.Text == String.Empty)
        {
            param13.Value = "null";
        }
        cmd.Parameters.Add(param13);

        SqlParameter param14 = new SqlParameter();
        param14.ParameterName = "@Position14";
        param14.Value = TextBoxOpt14.Text;
        if (TextBoxOpt14.Text != String.Empty)
        {
            param14.Value = TextBoxOpt14.Text;
        }
        if (TextBoxOpt14.Text == String.Empty)
        {
            param14.Value = "null";
        }
        cmd.Parameters.Add(param14);

        SqlParameter param15 = new SqlParameter();
        param15.ParameterName = "@Position15";
        param15.Value = TextBoxOpt15.Text;
        if (TextBoxOpt15.Text != String.Empty)
        {
            param15.Value = TextBoxOpt15.Text;
        }
        if (TextBoxOpt15.Text == String.Empty)
        {
            param15.Value = "null";
        }
        cmd.Parameters.Add(param15);

        SqlParameter param16 = new SqlParameter();
        param16.ParameterName = "@Position16";
        param16.Value = TextBoxOpt16.Text;
        if (TextBoxOpt16.Text != String.Empty)
        {
            param16.Value = TextBoxOpt16.Text;
        }
        if (TextBoxOpt16.Text == String.Empty)
        {
            param16.Value = "null";
        }
        cmd.Parameters.Add(param16);

        SqlParameter param17 = new SqlParameter();
        param17.ParameterName = "@Position17";
        param17.Value = TextBoxOpt17.Text;
        if (TextBoxOpt17.Text != String.Empty)
        {
            param17.Value = TextBoxOpt17.Text;
        }
        if (TextBoxOpt17.Text == String.Empty)
        {
            param17.Value = "null";
        }
        cmd.Parameters.Add(param17);

        SqlParameter param18 = new SqlParameter();
        param18.ParameterName = "@Position18";
        param18.Value = TextBoxOpt18.Text;
        if (TextBoxOpt18.Text != String.Empty)
        {
            param18.Value = TextBoxOpt18.Text;
        }
        if (TextBoxOpt18.Text == String.Empty)
        {
            param18.Value = "null";
        }
        cmd.Parameters.Add(param18);

        SqlParameter param19 = new SqlParameter();
        param19.ParameterName = "@Position19";
        param19.Value = TextBoxOpt19.Text;
        if (TextBoxOpt19.Text != String.Empty)
        {
            param19.Value = TextBoxOpt19.Text;
        }
        if (TextBoxOpt19.Text == String.Empty)
        {
            param19.Value = "null";
        }
        cmd.Parameters.Add(param19);

        SqlParameter param20 = new SqlParameter();
        param20.ParameterName = "@Position20";
        param20.Value = TextBoxOpt20.Text;
        if (TextBoxOpt20.Text != String.Empty)
        {
            param20.Value = TextBoxOpt20.Text;
        }
        if (TextBoxOpt20.Text == String.Empty)
        {
            param20.Value = "null";
        }
        cmd.Parameters.Add(param20);

        SqlParameter param21 = new SqlParameter();
        param21.ParameterName = "@Position21";
        param21.Value = TextBoxOpt21.Text;
        if (TextBoxOpt21.Text != String.Empty)
        {
            param21.Value = TextBoxOpt21.Text;
        }
        if (TextBoxOpt21.Text == String.Empty)
        {
            param21.Value = "null";
        }
        cmd.Parameters.Add(param21);

        SqlParameter param22 = new SqlParameter();
        param22.ParameterName = "@Position22";
        param22.Value = TextBoxOpt22.Text;
        if (TextBoxOpt22.Text != String.Empty)
        {
            param22.Value = TextBoxOpt22.Text;
        }
        if (TextBoxOpt22.Text == String.Empty)
        {
            param22.Value = "null";
        }
        cmd.Parameters.Add(param22);

        SqlParameter param23 = new SqlParameter();
        param23.ParameterName = "@Position23";
        param23.Value = TextBoxOpt23.Text;
        if (TextBoxOpt23.Text != String.Empty)
        {
            param23.Value = TextBoxOpt23.Text;
        }
        if (TextBoxOpt23.Text == String.Empty)
        {
            param23.Value = "null";
        }
        cmd.Parameters.Add(param23);

        SqlParameter param24 = new SqlParameter();
        param24.ParameterName = "@Position24";
        param24.Value = TextBoxOpt24.Text;
        if (TextBoxOpt24.Text != String.Empty)
        {
            param24.Value = TextBoxOpt24.Text;
        }
        if (TextBoxOpt24.Text == String.Empty)
        {
            param24.Value = "null";
        }
        cmd.Parameters.Add(param24);

        SqlParameter param25 = new SqlParameter();
        param25.ParameterName = "@Position25";
        param25.Value = TextBoxOpt25.Text;
        if (TextBoxOpt25.Text != String.Empty)
        {
            param25.Value = TextBoxOpt25.Text;
        }
        if (TextBoxOpt25.Text == String.Empty)
        {
            param25.Value = "null";
        }
        cmd.Parameters.Add(param25);

        SqlParameter param26 = new SqlParameter();
        param26.ParameterName = "@Position26";
        param26.Value = TextBoxOpt26.Text;
        if (TextBoxOpt26.Text != String.Empty)
        {
            param26.Value = TextBoxOpt26.Text;
        }
        if (TextBoxOpt26.Text == String.Empty)
        {
            param26.Value = "null";
        }
        cmd.Parameters.Add(param26);

        SqlParameter param27 = new SqlParameter();
        param27.ParameterName = "@Position27";
        param27.Value = TextBoxOpt27.Text;
        if (TextBoxOpt27.Text != String.Empty)
        {
            param27.Value = TextBoxOpt27.Text;
        }
        if (TextBoxOpt27.Text == String.Empty)
        {
            param27.Value = "null";
        }
        cmd.Parameters.Add(param27);

        SqlParameter param28 = new SqlParameter();
        param28.ParameterName = "@Position28";
        param28.Value = TextBoxOpt28.Text;
        if (TextBoxOpt28.Text != String.Empty)
        {
            param28.Value = TextBoxOpt28.Text;
        }
        if (TextBoxOpt28.Text == String.Empty)
        {
            param28.Value = "null";
        }
        cmd.Parameters.Add(param28);

        SqlParameter param29 = new SqlParameter();
        param29.ParameterName = "@Position29";
        param29.Value = TextBoxOpt29.Text;
        if (TextBoxOpt29.Text != String.Empty)
        {
            param29.Value = TextBoxOpt29.Text;
        }
        if (TextBoxOpt29.Text == String.Empty)
        {
            param29.Value = "null";
        }
        cmd.Parameters.Add(param29);

        SqlParameter param30 = new SqlParameter();
        param30.ParameterName = "@Position30";
        param30.Value = TextBoxOpt30.Text;
        if (TextBoxOpt30.Text != String.Empty)
        {
            param30.Value = TextBoxOpt30.Text;
        }
        if (TextBoxOpt30.Text == String.Empty)
        {
            param30.Value = "null";
        }
        cmd.Parameters.Add(param30);


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
            param1.Value = Session["SportID"];
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
}