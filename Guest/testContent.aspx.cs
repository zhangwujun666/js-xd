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
public partial class Student_testContent : System.Web.UI.Page
{

    SqlHelper data = new SqlHelper();
    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
            Get_Article();
        }


    }
   
    private void Get_Article()
    {

        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr = data.GetDataReader("select * from [TestPlan] where id=" + id);
        dr.Read();

        TextBox1.Text = dr["name"].ToString();
        HyperLink1.NavigateUrl = "../"+dr["baogaoPath"].ToString();
        TextBox5.Text = dr["ds"].ToString();
    }

    protected void ImageButtonSave_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("insert into baogao(name,jielun,Userid,username,Filepath,HaoCai)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + Session["userid"].ToString() + "','" + Session["user"].ToString() + "','" + pic.Text + "','" + TextBox3.Text+ "')");
        Alert.AlertAndRedirect("实验成功", "Mybaogao.aspx");
    }
    protected void ImageButtonBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../uploads/");

        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
    }
}
