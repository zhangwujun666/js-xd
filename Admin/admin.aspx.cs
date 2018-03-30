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

public partial class Admin_admin : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            InitData();
        }

    }
    protected void ImageButtonSave_Click(object sender, ImageClickEventArgs e)
    {
        data.RunSql("insert into admin(name,pwd)values('" + txtname.Text + "','"+TextBox1.Text+"')");
        Alert.AlertAndRedirect("添加成功", "admin.aspx");
        InitData();
    }

    /// <summary>
    /// 获取部门信息
    /// </summary>
    protected void InitData()
    {
        SqlHelper mydata = new SqlHelper();

        GridView1.DataSource = mydata.GetDataReader("select * from admin");
        GridView1.DataBind();
    }
    //GridView控件RowDeleting事件
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlHelper mydata = new SqlHelper();

        string ID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        try
        {
            mydata.RunSql("delete  from admin where  id='" + ID + "'");

            Response.Write("<script language=javascript>alert('成功删除！')</script>");
            GridView1.EditIndex = -1;
            InitData();
        }
        catch
        {

            Response.Write("<script language=javascript>alert('删除失败！')</script>");
        }

    }
    //GridView控件RowUpdating事件
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SqlHelper mydata = new SqlHelper();
        string ID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        try
        {
            mydata.RunSql("update admin set name='" + ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtName")).Text + "'  where DepartmentId=" + ID);



            Response.Write("<script language=javascript>alert('修改成功!')</script>");
            GridView1.EditIndex = -1;
            InitData();
        }
        catch
        {
            Response.Write("<script language=javascript>alert('修改失败!')</script>");
        }

    }
    //GridView控件RowCanceling事件
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        InitData();
    }
    //GridView控件RowEditing事件
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        InitData();
    }




    protected void ImageButtonBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("default.aspx");
    }
}
