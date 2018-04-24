using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Globalization;

public partial class Coach_Schedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }


    protected void FilterBtn_Click(object sender, EventArgs e)
    {


        if (DDL1.SelectedItem.Text == "Name")
        {
            String[] names = txtSearch.Text.Split(' ');

            if (names.Length > 1)
            {
                String f_name = names[0].ToString();
                String l_name = names[1].ToString();
                Session["First_Name"] = f_name;
                Session["Last_Name"] = l_name;
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }

            else
            {
                String name = names[0].ToString();
                Session["Name"] = name;
                if (Session["Last_Name"] != null)
                {
                    GridView1.DataSource = SqlDataSource1;
                    GridView1.DataBind();
                    Session["Last_Name"] = null;
                }
                else
                {
                    GridView1.DataSource = SqlDataSource1;
                    GridView1.DataBind();
                }
            }
        }
            if (DDL1.SelectedItem.Text == "Date")
            {
                string FilterExpression = "Date" + " ='" + Convert.ToDateTime(txtSearch.Text).ToString("MM/dd/yyyy") + "'";

                SqlDataSource1.FilterParameters.Clear();
                SqlDataSource1.FilterParameters.Add(new ControlParameter(DDL1.SelectedValue, "txtSearch", "Text"));
                SqlDataSource1.FilterExpression = FilterExpression;
            }
           else if (DDL1.SelectedItem.Text != "Date")
            {
                string FilterExpression = string.Concat(DDL1.SelectedValue, " LIKE '%{0}%'");
                SqlDataSource1.FilterParameters.Clear();
                SqlDataSource1.FilterParameters.Add(new ControlParameter(DDL1.SelectedValue, "txtSearch", "Text"));
                SqlDataSource1.FilterExpression = FilterExpression;
            }
        
    }



    protected void Clearbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Schedule.aspx");
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DDL1.SelectedItem.Text == "Date")
        {
            Calendar1.Visible = true;
        }
        else if (DDL1.SelectedItem.Text != "Date")
        {
            Calendar1.Visible = false;
        }
    }



    protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
    {
        txtSearch.Text = Convert.ToDateTime(Calendar1.SelectedDate, CultureInfo.GetCultureInfo("en-US")).ToString("MM/dd/yyyy");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {

    }
}
