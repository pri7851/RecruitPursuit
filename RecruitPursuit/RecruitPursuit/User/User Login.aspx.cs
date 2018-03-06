using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_User_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


   

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SortedList<string, string> UserList = LoadUsers();

        foreach(KeyValuePair<string, string> login in UserList)
        {
            if(UserList.ContainsKey(txtLogin.Text))
            {
                int username = UserList.IndexOfKey(txtLogin.Text);
                int password = UserList.IndexOfValue(txtPassword.Text);

                if(username == password)
                {
                    Response.Redirect("/Administrator/Admin Login.aspx");
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
}