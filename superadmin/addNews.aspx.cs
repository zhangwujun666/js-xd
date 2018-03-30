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

public partial class Admin_addNews : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    public string DownPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }

    }



   
    protected void ImageButtonBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("NewsList.aspx");

    }
    protected void ImageButtonSave_Click(object sender, ImageClickEventArgs e)
    {
        try
        {

            string sql = "insert into tb_News(name,ds)values('" + txtName.Text + "','" + content1.Value + "')";

            data.RunSql(sql);

            Alert.AlertAndRedirect("添加成功！", "NewsList.aspx");
        }
        catch
        {
            Alert.AlertAndRedirect("添加失败！", "NewsList.aspx");
        }
    }
}
