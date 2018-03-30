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
using System.IO;
using System.Net; 

public partial class Admin_index : System.Web.UI.Page
{




    SqlHelper data = new SqlHelper();
    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            Get_Article();
            user.Text = "您现在是访客身份！";


        }



//----------------------IP与MAC获取程序

        //System.Net.IPAddress[] addressList = Dns.GetHostByName(Dns.GetHostName()).AddressList;
       
        //   nativeIP.Text = addressList[0].ToString();



        /// 获得客户端IP
    /// 
    /// <returns></returns>
    
        // 穿过代理服务器取远程用户真实IP地址
        string Ip = string.Empty;
        if (Request.ServerVariables["HTTP_VIA"] != null)
        {
            if (Request.ServerVariables["HTTP_X_FORWARDED_FOR"] == null)
            {
                if (Request.ServerVariables["HTTP_CLIENT_IP"] != null)
                    Ip = Request.ServerVariables["HTTP_CLIENT_IP"].ToString();
                else
                    if (Request.ServerVariables["REMOTE_ADDR"] != null)
                        Ip = Request.ServerVariables["REMOTE_ADDR"].ToString();
                    else
                        Ip = "202.96.134.133";
            }
            else
                Ip = Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();
        } 
        else if (Request.ServerVariables["REMOTE_ADDR"] != null)
        {
            Ip = Request.ServerVariables["REMOTE_ADDR"].ToString();
        }
        else
        {
            Ip = "202.96.134.133";
        }

        nativeIP.Text = Ip.ToString();
    
            
      

      
//--------------------------------------


    }
    protected void gvFilms_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

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

        string sql = "select  " + strTop + "  * from [tb_News]  ";
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



    //private void btnChenk_Click(object sender, System.EventArgs e)
    //{
    //    System.Net.IPAddress[] addressList = Dns.GetHostByName(Dns.GetHostName()).AddressList;
    //    if (addressList.Length > 1)
    //    {
    //        nativeIP.Text = addressList[0].ToString();
    //        serverIP.Text = addressList[1].ToString();
    //    }
    //    else
    //    {
    //        nativeIP.Text = addressList[0].ToString();
    //        serverIP.Text = "Break the line...";
    //    }


    //}



    //protected void Page_Load(object sender, EventArgs e)
    //{
    //     TextIP.Text=Page.Request.UserHostAddress; 
    //}


}