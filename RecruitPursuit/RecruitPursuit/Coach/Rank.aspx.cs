using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Coach_Rank : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataBind();
        }
    }
    


    protected void Button2_Click1(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }

    protected void Filter(object sender, EventArgs e)
    {
        List<SqlParameter> sqlParameter = new List<SqlParameter>();
        if (DropDownList2.SelectedIndex > 0)
        {
            sqlParameter.Add(new SqlParameter("@Rec_PrimaryPosition", DropDownList2.SelectedItem.Text.Trim()));
        }
        if (DropDownList3.SelectedIndex > 0)
        {
            sqlParameter.Add(new SqlParameter("@Rec_HSGradYear", DropDownList3.SelectedItem.Text.Trim()));
        }
        
        BindGrid("GetRecruitByMultipleParameter", CommandType.StoredProcedure, sqlParameter.ToArray());
    }
    private void BindGrid(string query, CommandType commandType, SqlParameter[] parameters)
    {
        DataTable dt = new DataTable();
        String conString = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
        SqlConnection con = new SqlConnection(conString);
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.CommandType = commandType;
        if (parameters.Length > 0)
        {
            cmd.Parameters.AddRange(parameters);
        }
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid("SELECT[Rec_PrimaryPosition], [Rec_FName], [Rec_LName], [Sport_Id], [Rec_HSGradYear] FROM[profile] WHERE(([Rec_PrimaryPosition] = @Rec_PrimaryPosition) AND([Sport_Id] = @Sport_Id) AND([Rec_HSGradYear] = @Rec_HSGradYear))", CommandType.Text, new List<SqlParameter>().ToArray());
    }

}