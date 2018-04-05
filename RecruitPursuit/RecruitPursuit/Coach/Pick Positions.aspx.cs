using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Coach_Pick_Positions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String conString = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
        SqlConnection con = new SqlConnection(conString);
        String cmdString = "INSERT into Positions (Sport_Id, Position)" +
            "VALUES (@Sport_Id, @Position)";
        SqlCommand cmd = new SqlCommand(cmdString, con);

        SqlParameter param1 = new SqlParameter();
        param1.ParameterName = "@Sport_Id";
        param1.Value = Session["Sport_Id"].ToString();
        cmd.Parameters.Add(param1);

        SqlParameter param2 = new SqlParameter();
        param2.ParameterName = "@Position";
        param2.Value = TextBoxOpt1.Text;
        cmd.Parameters.Add(param2);
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
        
    }

   
}