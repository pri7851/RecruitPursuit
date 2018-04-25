using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Coach_Ranktest2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    



    protected void ddlSort_TextChanged(object sender, EventArgs e)
    {
        if (ddlSort.SelectedItem.Text == "GPA")
        {
            SDgv1.SelectCommand = "SELECT Rec_FName, Rec_LName, Rec_HSGradYear, Rec_HSGPA, Rec_PrimaryPosition, Rec_ACT, Rec_SAT_Tot, PostDate FROM dbo.profile WHERE (Sport_Id = @Sport_Id) ORDER BY [Rec_HSGPA] DESC";
        }
        else
           if (ddlSort.SelectedItem.Text == "SAT")
        {
            SDgv1.SelectCommand = "SELECT Rec_FName, Rec_LName, Rec_HSGradYear, Rec_HSGPA, Rec_PrimaryPosition, Rec_ACT, Rec_SAT_Tot, PostDate FROM dbo.profile WHERE (Sport_Id = @Sport_Id) ORDER BY [Rec_SAT_Tot] DESC";
        }
        else
               if (ddlSort.SelectedItem.Text == "ACT")
        {
            SDgv1.SelectCommand = "SELECT Rec_FName, Rec_LName, Rec_HSGradYear, Rec_HSGPA, Rec_PrimaryPosition, Rec_ACT, Rec_SAT_Tot, PostDate FROM dbo.profile WHERE (Sport_Id = @Sport_Id) ORDER BY [Rec_ACT] DESC";
        }
        else
            if(ddlSort.SelectedItem.Text == "Most Recent")
        {
            SDgv1.SelectCommand = "SELECT Rec_FName, Rec_LName, Rec_HSGradYear, Rec_HSGPA, Rec_PrimaryPosition, Rec_ACT, Rec_SAT_Tot, PostDate FROM dbo.profile WHERE (Sport_Id = @Sport_Id) ORDER BY [PostDate] DESC";
        }
    }



    protected void ddlPosition_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlSort.SelectedIndex = 0;
    }

    protected void ddlGradyear_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlSort.SelectedIndex = 0;
    }

   
}