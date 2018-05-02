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
        if (Session["SportName"] != null)
        {
            ((Label)Master.FindControl("LabelSport")).Text = Session["SportName"].ToString();

        }


    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String conString = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";

        String cmdString = "SELECT pro_id FROM profile WHERE pro_id = (SELECT MAX (pro_id) FROM [profile] WHERE pro_id = profile.pro_id)";
        SqlConnection con = new SqlConnection(conString);
        SqlCommand cmd = new SqlCommand(cmdString, con);
        con.Open();
        int current_id = (int)cmd.ExecuteScalar();
        String new_pro_id = current_id.ToString();
        con.Close();


        foreach (GridViewRow g1 in GridView3.Rows)
        {
            TextBox txt_SportQuestions = g1.FindControl("txt_SportQuestions") as TextBox;
            SqlConnection con3 = new SqlConnection(conString);
            String cmdSport_Answers = "INSERT INTO Answers VALUES(@SportQuestID, @Pro_Id, @Answer_text)";
            SqlCommand cmd3 = new SqlCommand(cmdSport_Answers, con);
            cmd3.Connection = con3;
            cmd3.Parameters.AddWithValue("@SportQuestID", g1.Cells[0].Text);
            cmd3.Parameters.AddWithValue("@Pro_Id", new_pro_id);
            cmd3.Parameters.AddWithValue("@Answer_text", txt_SportQuestions.Text);
            con3.Open();
            cmd3.ExecuteNonQuery();
            con3.Close();
        }

    }
}