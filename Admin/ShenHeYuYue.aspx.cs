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


public partial class Admin_ShenHeYuYue : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (txtbtime.Text == "")
            {
                txtbtime.Text = DateTime.Now.ToShortDateString();
            }
            if (txtEtime.Text == "")
            {
                txtEtime.Text = DateTime.Now.ToShortDateString();
            }
            Get_Article();

            getleibie();
            getdanwei();
            getcode();

        }

    }

    private void getleibie()
    {
        TextBox1.DataSource = data.GetDataReader("select distinct leibie from wfshengqing where IsChk='否'");
        TextBox1.DataTextField = "leibie";
        //TextBox1.DataValueField = "id";
        TextBox1.DataBind();
    }

    private void getdanwei()
    {
        TextBox2.DataSource = data.GetDataReader("select distinct code from  wfshengqing where IsChk='否' ");
        TextBox2.DataTextField = "code";
        //TextBox2.DataValueField = "id";
        TextBox2.DataBind();

    }

    private void getcode()
    {
        TextBox3.DataSource = data.GetDataReader("select distinct danwei from wfshengqing where IsChk='否'");
        TextBox3.DataTextField = "danwei";
        TextBox3.DataBind();
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
    protected void btnDel_Click(object sender, EventArgs e)
    {
        for (int rowIndex = 0; rowIndex < gvFilms.Rows.Count; rowIndex++)
        {
            if (((CheckBox)gvFilms.Rows[rowIndex].Cells[0].FindControl("chkSelect")).Checked)
            {
                if (DelCode(Convert.ToInt32(gvFilms.DataKeys[rowIndex].Value)))
                {

                }
            }
        }
        Get_Article();
        js.Alertjs("审核成功！");
    }
    protected void btnSelectAll_Click(object sender, EventArgs e)
    {

        Button btn = (Button)sender;
        bool isOK = false;
        if (btn.Text == "全选")
        {
            isOK = true;
            //找到PagerTemplate中的全选按钮
            btnSelectAll.Text = "取消全选";
        }
        else
        {
            btnSelectAll.Text = "全选";
        }

        foreach (GridViewRow row in gvFilms.Rows)
        {
            ((CheckBox)row.Cells[0].FindControl("chkSelect")).Checked = isOK;
        }
    }
    public bool DelCode(int id)
    {
        bool isOK = false;
        string sql = "update   [wfshengqing] set IsChk='是'  where id=" + id;
        SqlConnection con = new SqlConnection(SqlHelper.connstring);
        SqlCommand cmd = new SqlCommand(sql, con);
        try
        {
            con.Open();
            if (cmd.ExecuteNonQuery() > 0)
                isOK = true;
        }
        catch (SqlException ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }
        return isOK;
    }

    public DataSet GetCodeBy(int iCount)
    {
        SqlHelper date = new SqlHelper();



        string strTop = "";

        if (iCount > 1)
        {
            strTop = "top " + iCount.ToString();
        }


        string sql = "select  " + strTop + "  * from [wfshengqing] where IsChk='否'  ";
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



    protected void Button1_Click(object sender, EventArgs e)
    {
        getinfo();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        getinfo2();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        getinfo3();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        getinfo4();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Get_Article();
    }

    private void getinfo()
    {
        try
        {
            gvFilms.DataSource = GetCodeBy1(0);
            gvFilms.DataBind();
        }
        catch
        {
        }
    }
    private void getinfo2()
    {
        try
        {
            gvFilms.DataSource = GetCodeBy2(0);
            gvFilms.DataBind();
        }
        catch
        {
        }
    }
    private void getinfo3()
    {
        try
        {
            gvFilms.DataSource = GetCodeBy3(0);
            gvFilms.DataBind();
        }
        catch
        {
        }
    }
    private void getinfo4()
    {
        try
        {
            gvFilms.DataSource = GetCodeBy4(0);
            gvFilms.DataBind();
        }
        catch
        { 
        }
    }

    public DataSet GetCodeBy1(int iCount)
    {
        string strTop = "";
        if (iCount > 1)
        {
            strTop = "top " + iCount.ToString();
        }

        string sql = "select  " + strTop + "  * from [wfshengqing] where leibie like '%" + TextBox1.SelectedItem.Text + "%' and IsChk='否' ";
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

    public DataSet GetCodeBy2(int iCount)
    {
        string strTop = "";
        if (iCount > 1)
        {
            strTop = "top " + iCount.ToString();
        }

        string sql = "select  " + strTop + "  * from [wfshengqing] where code like '%" + TextBox2.SelectedItem.Text + "%' and IsChk='否' ";
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

    public DataSet GetCodeBy3(int iCount)
    {
        string strTop = "";
        if (iCount > 1)
        {
            strTop = "top " + iCount.ToString();
        }
        string sql = "";
        string b = Convert.ToDateTime(txtbtime.Text).ToShortDateString() + " 00:00";
        string e = Convert.ToDateTime(txtEtime.Text).ToShortDateString() + " 23:59";
        //if (TextBox1.Text == "")
        //{
        sql = "select  " + strTop + "  * from [wfshengqing]  where   time  between '" + Convert.ToDateTime(b) + "' and  '" + Convert.ToDateTime(e) + "' and IsChk='否'";
        //}
        //else
        //{
        //    sql = "select  " + strTop + "  * from [wfshengqing]  where  name like '%" + TextBox1.Text + "%' and  AddTime  between '" + Convert.ToDateTime(b) + "' and  '" + Convert.ToDateTime(e) + "'";

        //}

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
    public DataSet GetCodeBy4(int iCount)
    {
        string strTop = "";
        if (iCount > 1)
        {
            strTop = "top " + iCount.ToString();
        }

        string sql = "select  " + strTop + "  * from [wfshengqing] where danwei like '%" + TextBox3.SelectedItem.Text + "%' and IsChk='否' ";
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
