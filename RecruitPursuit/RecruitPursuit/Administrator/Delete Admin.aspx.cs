﻿using System;
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
            Response.Redirect("DeleteConfirmation.aspx");
        }
        
    }
}