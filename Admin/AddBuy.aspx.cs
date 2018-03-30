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
public partial class Admin_AddBuy : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    public string DownPath;
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    if (!IsPostBack)
    //    {
    //        DropDownList3.DataSource = data.GetDataReader("select * from  GYSInfo  ");
    //        DropDownList3.DataTextField = "Name";
    //        DropDownList3.DataValueField = "id";
    //        DropDownList3.DataBind();
    //        Type();
    //        GetChanp();
    //    }
    //}
    /// <summary>
    /// 绑定类别
    /// </summary>
    private void Type()
    {
        DropDownList1.DataSource = data.GetDataReader("select * from  Class  ");
        DropDownList1.DataTextField = "Name";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataBind();
        DropDownList1.Items.Add(new ListItem("选择设备类别", "0")); //动态添加新项
    }
    private void GetChanp()
    {
        DropDownList2.DataSource = data.GetDataReader("select * from  QiCaiInfo where TypeName='" + DropDownList1.SelectedItem.Text + "'   ");
        DropDownList2.DataTextField = "Name";
        DropDownList2.DataValueField = "id";
        DropDownList2.DataBind();
        this.DropDownList2.Items.Insert(0, new ListItem("请选择采购设备", "0"));
    }
    private void BinderQiCaiInfo()
    {

        SqlDataReader dr;
        dr = data.GetDataReader("select * from  QiCaiInfo where id='" + DropDownList2.SelectedValue + "'");
        if (dr.Read())
        {

            txtds.Text = dr["ds"].ToString();


            txtdanjia.Text = dr["danjia"].ToString();
            txtSpecification.Text = dr["Specification"].ToString();
            txtCode.Text = dr["Code"].ToString();
         
        }
        else
        {
            alert.Alertjs("没有设备！");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetChanp();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        BinderQiCaiInfo();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into JinHuo(ClassificationNumber,CManger,QiCaiInfoId)values('" + DropDownList1.SelectedValue + "','" + Session["admin"].ToString() + "','" + DropDownList2.SelectedValue + "')");
        Alert.AlertAndRedirect("采购成功！", "AddBuy.aspx");

    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    data.RunSql("insert into JinHuo(ClassificationNumber,shuliang,GyS,CManger,QiCaiInfoId,SumMoeny)values('" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + DropDownList3.SelectedItem.Text + "','" + Session["admin"].ToString() + "','" + DropDownList2.SelectedValue + "','" + TextBox2.Text + "')");
    //    Alert.AlertAndRedirect("采购成功！", "AddBuy.aspx");

    //}
    //protected void TextBox1_TextChanged(object sender, EventArgs e)
    //{
    //    TextBox2.Text = Convert.ToString(float.Parse(TextBox1.Text) * float.Parse(txtdanjia.Text));
    //}
}
