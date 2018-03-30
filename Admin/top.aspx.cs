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
        try
        {
            Label1.Text = Session["admin"].ToString();
        }
        catch
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('登陆超时请重新登陆！');top.window.location.href='../login.aspx';</script>");
        }

        Label2.Text = "管理员";
    }
}
