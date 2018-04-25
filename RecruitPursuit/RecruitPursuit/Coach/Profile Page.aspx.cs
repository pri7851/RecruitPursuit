using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;


public partial class Profile_Page : System.Web.UI.Page
{

    int ProID;
  
    protected void Page_Load(object sender, EventArgs e)
    {


        if(Request.QueryString["Pro_Id"] != null)
        {
            ProID = int.Parse(Request.QueryString["Pro_Id"].ToString());
        }
       
        else
        {
            Response.Write("Invalid access to page!");
            Response.End();
        }

    }
    

   

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }

    protected void Addnotes_Click(object sender, EventArgs e)
    {


      

        /*
            SqlDSnote.InsertCommandType = SqlDataSourceCommandType.Text;
            SqlDSnote.InsertCommand = "Insert into Notes (Pro_Id,NPost_date,Note) VALUES (@Pro_id,@NPost_date,@Note)";

            SqlDSnote.InsertParameters.Add("Pro_id", Request.QueryString["Pro_id"]);
            SqlDSnote.InsertParameters.Add("NPost_date", DateTime.Now.ToString());
            SqlDSnote.InsertParameters.Add("Note", TxtNotes.Text);

            SqlDSnote.Insert();

            TxtNotes.Text = "";
*/
    }

    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void BtnViewSch_Click(object sender, EventArgs e)
    {
        Session["ID"] = ProID;
        Response.Redirect("Profile_Schedule.aspx");
    }
}