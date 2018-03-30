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


public partial class Admin_AddBaoFei : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    public string DownPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Type();
            GetChanp();
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
        dr = data.GetDataReader("select * from  dbo.V_KuCun where QiCaiInfoId='" + DropDownList2.SelectedValue + "'   ");
        if (dr.Read())
        {


            Label2.Text = dr["shuliang"].ToString();

            Label1.Text = dr["Storename"].ToString();
            Hidden1.Value = dr["StoreId"].ToString();

        }
        else
        {
            alert.Alertjs("没有设备信息！");
            return;
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

        //if (int.Parse(Label2.Text) < int.Parse(TextBox1.Text))
        //{
        //    alert.Alertjs("数量不能大于库存数量！");
        //}
        //else
        //{

            
            SqlDataReader dr;
            dr = data.GetDataReader("select   *  from QiCaiKucun where QiCaiInfoId='" + DropDownList2.SelectedValue + "'  ");
            if (dr.Read())
            {
                string sql = "update QiCaiKucun set shuliang=shuliang-" + float.Parse(TextBox1.Text) + " where QiCaiInfoId=" + DropDownList2.SelectedValue;
                data.RunSql(sql);
            }

            data.RunSql("insert into dbo.BaoFei(DeviceID,ShuLiang,UserID,YuanYin,CManger,SroreID,StroeName)values('" + DropDownList2.SelectedValue + "','" + TextBox1.Text + "','" + Session["adminid"].ToString() + "','" + TextBox3.Text.Trim() + "','" + Session["admin"].ToString() + "','" + Hidden1.Value + "','" + Label1.Text + "')");


            Alert.AlertAndRedirect("报废成功！", "BaoFeiManger.aspx");

        //}

    }

}
