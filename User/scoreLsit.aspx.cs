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
using Excel = Microsoft.Office.Interop.Excel; 

public partial class Teachter_scoreLsit : System.Web.UI.Page
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


    public override void VerifyRenderingInServerForm(Control control)
    {

    }

    protected void btnDel_Click(object sender, EventArgs e)
    {
        gvFilms.AllowPaging = false; //清除分页
        gvFilms.AllowSorting = false; //清除排序   
        Get_Article(); //你绑定gridview1数据源的那个函数。
        Response.Clear();
        Response.Buffer = true;
        Response.Charset = "GB2312";
        Response.AppendHeader("Content-Disposition", "attachment;filename=DataReport.xls"); //.xls的文件名可修改
        Response.ContentEncoding = System.Text.Encoding.UTF7;
        Response.ContentType = "application/ms-excel"; //设置输出文件类型为excel文件。   
        System.IO.StringWriter oStringWriter = new System.IO.StringWriter();
        System.Web.UI.HtmlTextWriter oHtmlTextWriter = new System.Web.UI.HtmlTextWriter(oStringWriter);
        gvFilms.RenderControl(oHtmlTextWriter);
        Response.Output.Write(oStringWriter.ToString());
        Response.Flush();
        Response.End();
        gvFilms.AllowSorting = true; //恢复分页 GridView1.AllowPaging = true; //恢复排序
        Get_Article(); //再次绑定
    }

    private void Get_Article()
    {
        try
        {


            gvFilms.DataSource = GetCodeBy(0);
            gvFilms.DataBind();
        }
        catch
        {

        }

    }
    protected void gvFilms_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvFilms.PageIndex = e.NewPageIndex;
        Get_Article();
    }
    protected void gvFilms_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //鼠标移动变色
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //当鼠标放上去的时候 先保存当前行的背景颜色 并给附一颜色 
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f6f6f6',this.style.fontWeight='';");
            //当鼠标离开的时候 将背景颜色还原的以前的颜色 
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
        }
        //单击行改变行背景颜色 
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onclick", "this.style.backgroundColor='#f6f6f6'; this.style.color='buttontext';this.style.cursor='default';");
        }

    }

    public DataSet GetCodeBy(int iCount)
    {
        SqlHelper date = new SqlHelper();



        string strTop = "";

        if (iCount > 1)
        {
            strTop = "top " + iCount.ToString();
        }


        string sql = "select  " + strTop + "  * from [baogao] where ischk='是'  ";
        SqlConnection con = new SqlConnection(SqlHelper.connstring);
        SqlCommand cmd = new SqlCommand(sql, con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = null;
        try
        {
            con.Open();
            ds = new DataSet();
            da.Fill(ds);

        }
        catch (SqlException ex)
        {
            throw ex;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }
        return ds;
    }


}
