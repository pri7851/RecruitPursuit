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
        if (Page.IsPostBack){
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
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


        if (sportHasPositions == "No")
        {
            Panel4.Visible = false;

        }

        if (sportHasPositions == "Yes")
        {
            Panel4.Visible = true;

        }

        if (Session["SportName"] != null)
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
    }



    protected void btnNext1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
    }

    protected void btnBack1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    }
    protected void btnNext2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
    }



    protected void Back2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel1.Visible = false;

    }
}