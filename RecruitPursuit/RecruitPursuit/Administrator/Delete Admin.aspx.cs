using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Administrator_Delete_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if(txtName.Text != txtConfirm.Text)
        {
            lblDelete.Text = "Usernames do not match. Please try again.";
        }
        else
        {
            lblDelete.Visible = true;
            btnConfirm.Visible = true;
            btnCancel.Visible = true;
            
        }
    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        SqlDataSource1.DeleteCommandType = SqlDataSourceCommandType.Text;
        SqlDataSource1.DeleteCommand = "DELETE FROM coach WHERE Usename=@Usename";
        SqlDataSource1.DeleteParameters.Add("Usename", txtName.Text);
        SqlDataSource1.Delete();
    }
}