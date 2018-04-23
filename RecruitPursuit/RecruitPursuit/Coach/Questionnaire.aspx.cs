using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Questionnaire : System.Web.UI.Page
{
    String sportHasPositions;

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
                Panel1.Visible = false;
                btnAdd.Visible = true;
            }
        }

       /* String conString = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
        SqlConnection con = new SqlConnection(conString);

        //create a command behavior object
        String cmdString = "SELECT [Position] FROM [Positions] WHERE ([Sport_Id] = @Sport_Id)";
        SqlCommand cmd = new SqlCommand(cmdString, con);

       
        SqlParameter param1 = new SqlParameter();
        param1.ParameterName = "@Sport_Id";
        param1.Value = Session["SportID"];
        cmd.Parameters.Add(param1);

        
        int added = 0;
        try
        {
            con.Open();
            object nullableValue = cmd.ExecuteScalar();
            if (nullableValue == null)// || nullableValue == DBNull.Value)
            {
                Panel1.Visible = false;
                btnAdd.Visible = true;
            }
           
            added = cmd.ExecuteNonQuery();
        }

        catch (Exception err)
        {
            //Output.Text = err.Message;
        }

        finally
        {
            con.Close();
       
        }
        */


        if (!Page.IsPostBack)
        {
            using (SqlConnection dataConnection = new SqlConnection(@"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8"))
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
        }


            if (sportHasPositions == "No")
            {
                CheckBox1.Checked = true;
                Panel1.Visible = false;
                btnAdd.Visible = false;
            }

            if (sportHasPositions == "Yes")
            {
                CheckBox1.Checked = false;
                if (nullableValue == null)// || nullableValue == DBNull.Value)
                {
                    Panel1.Visible = false;
                    btnAdd.Visible = true;
                }
                else
                {
                    Panel1.Visible = true;
                    btnAdd.Visible = false;
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
            Panel1.Visible = false;
            btnAdd.Visible = false;
        }

        if (CheckBox1.Checked == false)
        {
            String conString = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
            SqlConnection con = new SqlConnection(conString);

            //create a command behavior object
            String cmdString = "UPDATE Sport SET SportHasPositions = @SportHasPositions WHERE Sport_Id = @Sport_Id";
            SqlCommand cmd = new SqlCommand(cmdString, con);

            SqlParameter param0 = new SqlParameter();
            param0.ParameterName = "@SportHasPositions";
            param0.Value = "Yes";
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

            CheckBox1.Checked = false;
            if (nullableValue == null)// || nullableValue == DBNull.Value)
            {
                Panel1.Visible = false;
                btnAdd.Visible = true;
            }
            else
            {
                Panel1.Visible = true;
                btnAdd.Visible = false;
            }
        }
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
            param1.Value = Session["Sport_Id"];
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


    protected void btnEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Positions.aspx");
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("Positions.aspx");
    }

    protected void btnPreview_Click(object sender, EventArgs e)
    {
        Response.Redirect("Preview.aspx");
    }
}