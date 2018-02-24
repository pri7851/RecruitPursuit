using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_Add_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
        SqlDataSource1.InsertCommand = "INSERT into coach (Sport_id, C_FName, C_LName, C_title, Usename, Password) VALUES " +
          "(@Sport_id, @C_FName, @C_LName, @C_title, @Usename, @Password)";
        SqlDataSource1.InsertParameters.Add("Sport_id", DropDownList1.SelectedValue);
        SqlDataSource1.InsertParameters.Add("C_FName", TextBox1.Text);
        SqlDataSource1.InsertParameters.Add("C_LName", TextBox2.Text);
        SqlDataSource1.InsertParameters.Add("C_title", DropDownList2.SelectedItem.Text);
        SqlDataSource1.InsertParameters.Add("Usename", TextBox3.Text);
        SqlDataSource1.InsertParameters.Add("Password", TextBox4.Text);
        SqlDataSource1.Insert();
        
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}