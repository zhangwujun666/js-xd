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
public partial class Student_IschktestContent : System.Web.UI.Page
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
        TextBox2.Text = dr["pl"].ToString();
        TextBox4.Text = dr["Teachternae"].ToString();
        TextBox3.Text = dr["score"].ToString();
        TextBox5.Text = dr["addtime"].ToString();
        this.HyperLink1.NavigateUrl = "../" + dr["Filepath"].ToString();

    }

}

