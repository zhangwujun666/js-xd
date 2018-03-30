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

public partial class Admin_Addteachter : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Getxueyuan();
         

        }
    }

    private void Getxueyuan()
    {

        DropDownList2.DataSource = data.GetDataReader("select * from  xueyuan");
        DropDownList2.DataTextField = "Name";
        DropDownList2.DataValueField = "id";
        DropDownList2.DataBind();

    }


    protected void ImageButtonSave_Click(object sender, ImageClickEventArgs e)
    {
        data.RunSql("insert into  TeachterInfo(xuehao,name,sex,tel,Emal,danwei)values('" + txtxuehao.Text + "','" + txtUser.Text + "','" + drsex.SelectedItem.Text + "','" + txttel.Text + "','" + txtEmal.Text + "','" + DropDownList2 .SelectedItem.Text + "')");
        Alert.AlertAndRedirect("添加成功请继续添加", "Addteachter.aspx");
    }
}
