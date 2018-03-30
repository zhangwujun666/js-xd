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
public partial class Admin_ModifyTeachter : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Getxueyuan();

            SqlHelper data = new SqlHelper();

            int id = int.Parse(Request.QueryString["id"].ToString());
            SqlDataReader dr = data.GetDataReader("select * from TeachterInfo where id=" + id);
            dr.Read();
            txtxuehao.Text = dr["xuehao"].ToString();
            txtUser.Text = dr["name"].ToString();
            txtnianling.Text = dr["nianling"].ToString();

            txtjg.Text = dr["jiguan"].ToString();
            txttel.Text = dr["tel"].ToString();
            txtEmal.Text = dr["Emal"].ToString();

            if (Convert.ToString(dr["sex"]).Trim() == "男")
            {
                drsex.SelectedIndex = 0;
            }
            if (Convert.ToString(dr["sex"]).Trim() == "女")
            {
                drsex.SelectedIndex = 1;
            }
        }
    }


    protected void ImageButtonSave_Click(object sender, ImageClickEventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlHelper update = new SqlHelper();


        update.RunSql("update  TeachterInfo set name='" + txtUser.Text + "',nianling='" + txtnianling.Text + "',sex='" + drsex.SelectedValue + "',jiguan='" + txtjg.Text + "',tel='" + txttel.Text + "',Emal='" + txtEmal.Text + "'  where id=" + id);

        Alert.AlertAndRedirect("修改成功", "TeachterList.aspx");

    }

    private void Getxueyuan()
    {

        DropDownList2.DataSource = data.GetDataReader("select * from  xueyuan");
        DropDownList2.DataTextField = "Name";
        DropDownList2.DataValueField = "id";
        DropDownList2.DataBind();

    }


}
