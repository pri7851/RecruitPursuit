using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Coach_Preview : System.Web.UI.Page
{
    String sportHasPositions;

    protected void Page_Load(object sender, EventArgs e)
    {
        /* using (SqlConnection dataConnection = new SqlConnection(@"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8"))
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
         */
        String conString = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
        String cmdString = "SELECT [SportHasPositions] FROM [Sport] WHERE ([Sport_Id] = @Sport_Id)";
        SqlConnection con = new SqlConnection(conString);
        SqlCommand cmd = new SqlCommand(cmdString, con);
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@Sport_Id", Session["Sport_Id"].ToString());
        con.Open();
        String sportHasPositions = (String)cmd.ExecuteScalar();
        con.Close();
        if(sportHasPositions == "No")
        {
            lblPrimaryPosition.Visible = false;
            lblSecondaryPosition.Visible = false;
            DropDownListPrimaryPositions.Visible = false;
            DropDownListSecondaryPositions.Visible = false;
        }
        


    }

    
}