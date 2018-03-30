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
public partial class Admin_addstudent : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { Getxueyuan();
           

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
        data.RunSql("insert into  StudentInfo(xuehao,name,banji,XueYuan,tel,Emal,sex,csny)values('" + txtxuehao.Text + "','" + txtUser.Text + "','" + banji.Text + "','" + DropDownList2.SelectedItem.Text + "','" + txttel.Text + "','" + txtEmal.Text + "','" + drsex.SelectedValue + "','" + txtcsny.Text + "')");
        Alert.AlertAndRedirect("添加成功请继续添加", "AddStudent.aspx");
    }
}
