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
public partial class Teachter_pingfen : System.Web.UI.Page
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
        dr = data.GetDataReader("select * from  baogao where id=" + id);
        dr.Read();
        txtName.Text = dr["name"].ToString();
        TextBox1.Text = dr["jielun"].ToString();
      
        TextBox4.Text = dr["username"].ToString();
     
        TextBox5.Text = dr["addtime"].ToString();
        this.HyperLink1.NavigateUrl = "../" + dr["Filepath"].ToString();

    }

    protected void ImageButtonSave_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update baogao set score='" + TextBox3.Text + "',pl='" + TextBox2.Text + "', Teachterid='" + Session["userid"].ToString() + "',Teachternae='" + Session["user"].ToString() + "',ischk='是' where id=" + id);

        Alert.AlertAndRedirect("评分成功","addScore.aspx");
    }
}

