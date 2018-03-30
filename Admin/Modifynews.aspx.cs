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
using System.Data.SqlClient;

public partial class Admin_Modifynews : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    public string DownPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            GetArticle();

        }
    }


    private void GetArticle()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  tb_News where id=" + id);
        dr.Read();
        txtName.Text = dr["name"].ToString();
        content1.Value = dr["ds"].ToString();


    }
    protected void ImageButtonSave_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update   tb_News set name='" + txtName.Text + "',ds='" + content1.Value + "' where id=" + id);

        Alert.AlertAndRedirect("修改成功！", "NewsList.aspx");
    }
    protected void ImageButtonBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("NewsList.aspx");

    }
}

