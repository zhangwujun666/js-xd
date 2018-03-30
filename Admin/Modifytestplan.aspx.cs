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
public partial class Admin_Modifytestplan : System.Web.UI.Page
{

    SqlHelper data = new SqlHelper();
    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getkemu();
            getxueyuan();
            Get_Article();
        }


    }
    private void getkemu()
    {

        ddkecheng.DataSource = data.GetDataReader("select * from  kecheng ");
        ddkecheng.DataTextField = "name";
        ddkecheng.DataValueField = "id";
        ddkecheng.DataBind();

    }
    private void getxueyuan()
    {

        ddxueyuan.DataSource = data.GetDataReader("select * from  xueyuan ");
        ddxueyuan.DataTextField = "name";
        ddxueyuan.DataValueField = "id";
        ddxueyuan.DataBind();

    }


    private void Get_Article()
    {

        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr = data.GetDataReader("select * from [TestPlan] where id=" + id);
        dr.Read();
     
        TextBox1.Text = dr["name"].ToString();

        TextBox5.Text = dr["ds"].ToString();
    }

    protected void ImageButtonSave_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update [TestPlan] set name='" + TextBox1.Text + "',kemuid='" + ddkecheng.SelectedValue + "',kemuname='" + ddkecheng.SelectedItem.Text + "',xueyuanid='" + ddxueyuan.SelectedValue + "', xueyuanname='" + ddxueyuan.SelectedItem.Text+ "',ds='" + TextBox5.Text + "'  where id=" + id);
        Alert.AlertAndRedirect("修改成功", "testplanlist.aspx");
    }
    protected void ImageButtonBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("default.aspx");
    }
}
