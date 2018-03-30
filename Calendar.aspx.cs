using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calendar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblday.Text = Calendar1.TodaysDate.ToShortDateString();
    }

    //protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    //{
        
    //    //lblbday.Text = Calendar1.SelectedDate.ToShortDateString();
    //}
}