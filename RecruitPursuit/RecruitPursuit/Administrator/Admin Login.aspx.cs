using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;

public partial class Administrator_Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public SortedList<string, string> LoadAdmins()
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