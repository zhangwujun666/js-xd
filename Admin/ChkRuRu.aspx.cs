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
public partial class Admin_ChkRuRu : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    public string DownPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetInfo();


          
                DropDownList1.DataSource = data.GetDataReader("select * from  Room   ");
                DropDownList1.DataTextField = "Name";
                DropDownList1.DataValueField = "id";
                DropDownList1.DataBind();
     
        }
    }
    private void GetInfo()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  V_CaiGou where id=" + id);
        dr.Read();
        txtname.Text = dr["name"].ToString();
        txtds.Text = dr["ds"].ToString();
        txtType.Text = dr["TypeName"].ToString();
        txtdanjia.Text = dr["danjia"].ToString();
        txtSpecification.Text = dr["Specification"].ToString();
        TextBox1.Text = dr["Code"].ToString();
        txtriqi.Text = Convert.ToDateTime(dr["AddTime"].ToString()).ToShortDateString();
        txtPerson.Text = dr["CManger"].ToString();
        txtSL.Text = dr["shuliang"].ToString();
        Hidden1.Value = dr["QiCaiInfoId"].ToString();
        Hidden2.Value = dr["ClassificationNumber"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {   
        
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update JinHuo set istRuKu='是' where id="+id);

     
        SqlDataReader dr;
        dr = data.GetDataReader("select   *  from QiCaiKucun where QiCaiInfoId='" + Hidden1.Value + "' ");
        if (dr.Read())
        {
         
            data.RunSql("update QiCaiKucun set shuliang=shuliang+" + float.Parse(txtSL.Text) + " where QiCaiInfoId='" + Hidden1.Value + "'");
        }
        else
        {
            data.RunSql("insert into QiCaiKucun(ClassificationNumber,shuliang,QiCaiInfoId,StoreId)values('" + Hidden2.Value + "','" + txtSL.Text + "','" + Hidden1.Value + "','" + DropDownList1.SelectedValue + "')");

             
        }
        Alert.AlertAndRedirect("入库成功！", "AddStore.aspx");
    }
}
