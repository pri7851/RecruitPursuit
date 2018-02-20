using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Questionnaire : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    TextBox tb;
    static int i = 0;
    
    protected void btnNew_Click(object sender, EventArgs e)
    {
        i++;
        for (int j = 0; j <= i; j++)
        {
            tb = new TextBox();
            tb.ID = j.ToString();

            Placeholder1.Controls.Add(tb);
           
        }
    }
}