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
public partial class Admin_liuyan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindToGirdView();
        }
    }
    private void BindToGirdView()
    {
        SqlConnection conn = new SqlConnection(SqlHelper.connstring);
        string sqlStr = "select  * from Topic  order by id desc";
        SqlDataAdapter sda = new SqlDataAdapter(sqlStr, conn);
        DataSet ds = new DataSet();
        conn.Open();
        sda.Fill(ds, "Topic");

        conn.Close();

        this.GV_list.DataSource = ds.Tables["Topic"].DefaultView;
        this.GV_list.DataBind();
    }
    protected void GV_list_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GV_list.PageIndex = e.NewPageIndex;
        this.BindToGirdView();
    }

 
}
