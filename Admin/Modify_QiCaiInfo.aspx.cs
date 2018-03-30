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
public partial class Admin_Modify_QiCaiInfo : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    public string DownPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Type();
            GetInfo();
        }
    }
    /// <summary>
    /// 绑定类别
    /// </summary>
    private void Type()
    {

        DropDownList1.DataSource = data.GetDataReader("select * from  Class  ");
        DropDownList1.DataTextField = "Name";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataBind();

    }
    private void GetInfo()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  QiCaiInfo where id=" + id);
        dr.Read();
        txtname.Text = dr["name"].ToString();
        txtds.Text = dr["ds"].ToString();
        DropDownList1.Items[0].Text = dr["TypeName"].ToString();
        txtdanjia.Text = dr["danjia"].ToString();
        txtSpecification.Text = dr["Specification"].ToString();
        TextBox1.Text = dr["Code"].ToString();
  
        pic.Text = dr["Images"].ToString();
        Image1.ImageUrl = "../" + dr["Images"].ToString();


        TextBox2.Text = dr["SHTel"].ToString();
        TextBox3.Text = dr["yanSe"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update   QiCaiInfo set   Code='" + TextBox1.Text + "', danjia='" + txtdanjia.Text + "',Specification='" + txtSpecification.Text + "', name='" + txtname.Text + "',ds='" + txtds.Text + "',TypeName='" + DropDownList1.SelectedItem.Text + "',ClassificationNumber=" + DropDownList1.SelectedValue + ",Images='" + pic.Text + "',SHTel='" + TextBox2.Text + "',yanSe='" + TextBox3.Text + "'  where id=" + id);

        Alert.AlertAndRedirect("修改成功！", "QiCaiInfoManger.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text =up.s;
        Image1.ImageUrl = "../" + pic.Text;

    }
}
