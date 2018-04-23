using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Administrator_Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) { }
   /* 
    bool flag = false;
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    public SortedList<string, string> LoadCoaches()
    {

        SortedList<string, string> CoachList = new SortedList<string, string>();
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        for (int i = 0; i < dv.Count; i++)
        {
            string username = (String)dv[i]["Usename"];
            string password = (String)dv[i]["Password"];
            CoachList.Add(username, password);

        }
        return CoachList;
    }



    protected void Button1_Click(object sender, EventArgs e)
    {

        SortedList<string, string> RecruitList = LoadCoaches();

        foreach (KeyValuePair<string, string> login in RecruitList)
        {
            if (RecruitList.ContainsKey(txtLogin.Text))
            {



                string connection = @"Data Source=184.168.47.21;Initial Catalog=RecruitPursuit;Persist Security Info=True;User ID=RecruitPursuit;Password=Recruit20!8";
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "SELECT[Usename], [Password] FROM[coach] WHERE(([Usename] = @Usename) AND([Password] = @Password) AND ([C_title] = @Administrator) )";
                cmd.Parameters.AddWithValue("Usename", txtLogin.Text);
                cmd.Parameters.AddWithValue("Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("Administrator", "Administrator");


                cmd.Connection = con;


                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["Admin"] = txtLogin.Text;

                    Response.Redirect("Admin Home.aspx");
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

        */ public SortedList<string, string> LoadAdmins()
         {

             SortedList<string, string> AdminList = new SortedList<string, string>();
             AdminList.Add("Matthew", "Kifer");
             AdminList.Add("Justin", "Wyman");
             AdminList.Add("Thomas", "Myers");
             AdminList.Add("Emily", "Price");

             return AdminList;

         }

         protected void Button1_Click(object sender, EventArgs e)
         {
             SortedList<string, string> AdminList = LoadAdmins();

             foreach (KeyValuePair<string, string> login in AdminList)
             {
                 if(AdminList.ContainsKey(txtLogin.Text))
                 {
                     int username = AdminList.IndexOfKey(txtLogin.Text);
                     int password = AdminList.IndexOfValue(txtPassword.Text);

                     if(username == password)
                     {
                         Session["Admin"] = txtLogin.Text;
                         Response.Redirect("Admin Home.aspx");
                     }
                     else
                     {
                         lbl1.Text = "Login Failed. Wrong password.";
                     }
                 }
                 else
                 {
                     lbl1.Text = "Login Failed. Username/password does not exist.";
                 }
             }
         }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
    {

    }
}