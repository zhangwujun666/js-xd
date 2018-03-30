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

public partial class adduser : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    SqlDataReader dr;
    SqlDataReader dr1;
    SqlDataReader dr2;
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
        dr = data.GetDataReader("select * from  [TeachterInfo] where xuehao='" + txtxuehao.Text.Trim() + "'");

        if (dr.Read())
        {
            Alert.AlertAndRedirect("您的用户名已经被人使用了，请更换一个！", "adduser.aspx");
        }
        else
        {
            if (pass.Text != passc.Text)
            {
                Alert.AlertAndRedirect("您两次输入的密码不一样！", "adduser.aspx");
            }
            else
            {
                data.RunSql("insert into  TeachterInfo(danwei,xuehao,pwd,pwdc,name,sex,tel,Emal,Question,Answer,IsChk)values('" + DropDownList2.SelectedItem.Text + "','" + txtxuehao.Text + "','" + pass.Text + "','" + passc.Text + "','" + txtUser.Text + "','" + drsex.SelectedItem.Text + "','" + txttel.Text + "','" + txtEmal.Text + "','" + txtQuestion.Text + "','" + txtAnswer.Text + "','" + '否' + "')");
                Alert.AlertAndRedirect("注册成功！等待管理员审核", "Login.aspx");
            }
        }
    }
}
