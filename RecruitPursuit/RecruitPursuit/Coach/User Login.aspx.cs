using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_User_Login : System.Web.UI.Page
{
    bool flag = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }

    public SortedList<string, string> LoadCoaches()
    {
        
        SortedList<string, string> CoachList = new SortedList<string, string>();
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        for(int i = 0; i < dv.Count; i++)
        {
            string username = (String)dv[i]["Usename"];
            string password = (String)dv[i]["Password"];
            CoachList.Add(username, password);
            
        }
        return CoachList;
    }

   

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        
        SortedList<string, string> RecruitList = LoadCoaches();
        
        foreach (KeyValuePair<string, string> login in RecruitList)
        {
            if (RecruitList.ContainsKey(txtLogin.Text))
            {


                Session["Sport_Id"] = DropDownList1.SelectedValue;
                string connection = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "SELECT[Usename], [Password], [Sport_Id] FROM[coach] WHERE(([Usename] = @Usename) AND([Password] = @Password) AND([Sport_Id] = @Sport_Id))";
                cmd.Parameters.AddWithValue("Usename", txtLogin.Text);
                cmd.Parameters.AddWithValue("Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("Sport_Id", DropDownList1.SelectedValue);


                cmd.Connection = con;
                
                
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count > 0)
                {
                    Session["Username"] = txtLogin.Text;
                    Session["SportId"] = DropDownList1.SelectedValue;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    lbl1.Text = "Login Failed. Wrong password or Wrong Sport. Try a different password or a different sport.";
                }
               

            }
            else
            {
                lbl1.Text = "Login Failed. Wrong username.";




            }
        }








    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {


    }
}