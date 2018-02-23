using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_DeleteConfirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnNo_Click(object sender, EventArgs e)
    {
        Response.Redirect("Delete Admin.aspx");
        
    }

    protected void btnYes_Click(object sender, EventArgs e)
    {
        HyperLink2.Visible = true;
        SqlDataSource1.DeleteCommandType = SqlDataSourceCommandType.Text;
        SqlDataSource1.DeleteCommand = "DELETE FROM coach WHERE Usename=@Usename";
        SqlDataSource1.DeleteParameters.Add("Usename", txtName.Text);
        SqlDataSource1.Delete();
    }
}