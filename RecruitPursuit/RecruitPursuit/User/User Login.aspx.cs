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
        Session["Username"] = txtLogin.Text;
        foreach (KeyValuePair<string, string> login in RecruitList)
        {
            if(RecruitList.ContainsKey(txtLogin.Text))
            {
                
                int username = RecruitList.IndexOfKey(txtLogin.Text);
                int password = RecruitList.IndexOfValue(txtPassword.Text);
                

                if(username == password)
                {
                    Session["SportId"] = DropDownList1.SelectedValue;
                    string connection = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Justin\Desktop\recruitpursuit.mdf; Integrated Security = True; Connect Timeout = 30";
                    SqlConnection con = new SqlConnection(connection);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "SELECT * FROM [coach] WHERE ([Usename] = @Usename) AND ([Password] = @Password)";
                    cmd.Parameters.AddWithValue("Usename", txtLogin.Text);
                    cmd.Parameters.AddWithValue("Password", txtPassword.Text);
                   
                   
                    cmd.Connection = con;
                    SqlDataReader rd = cmd.ExecuteReader();
                    
                    while(rd.Read())
                    {
                        lbl1.Text = rd[5].ToString();
                        if (rd[1].ToString() == DropDownList1.SelectedValue)
                        {
                            flag = true;
                            break;
                        }
                    }
                    
                }
                else
                {
                    lbl1.Text = "Login Failed. Wrong password.";
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