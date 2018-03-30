using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_top : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        Label2.Text = "会员";
        try
        {
            Label1.Text = Session["user"].ToString();
        }
        catch {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('登陆超时请重新登陆！');top.window.location.href='../login.aspx';</script>");
        }
       
    }
}
