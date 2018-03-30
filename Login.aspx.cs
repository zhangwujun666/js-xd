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

public partial class Login : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    SqlDataReader dr;
    SqlDataReader dr1;
    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void cheTeachter()
    {
        dr = data.GetDataReader("select * from  [TeachterInfo] where xuehao='" + TxtUserName.Text.Trim() + "'and Pwd='" + TxtPassword.Text.Trim() + "'and IsChk='是'");
        dr1 = data.GetDataReader("select * from  [TeachterInfo] where xuehao='" + TxtUserName.Text.Trim() + "'and Pwd='" + TxtPassword.Text.Trim() + "'and IsChk='否'");

        if (TxtUserName.Text == "" && TxtPassword.Text == "")
        {
            Alert.AlertAndRedirect("没有输入账号和密码！", "Login.aspx");
        }
        else
        {
            if (dr1.Read())
            {
                Alert.AlertAndRedirect("该账号没有审核！请联系管理员审核！", "Login.aspx");

            }
            else
            {
                if (dr.Read())
                {
                    Session["user"] = dr["name"].ToString();

                    Session["userid"] = dr["id"].ToString();

                    Session["danwei"] = dr["danwei"].ToString();

                    Response.Redirect("User/main.html");

                } 
                 else
                {
                    Alert.AlertAndRedirect("账号或者密码不对请重新登陆！", "Login.aspx");
                }
            }
            
        }
    }


    private void chkstudent()
    {
        if (TxtUserName.Text == "" && TxtPassword.Text == "")
        {
            Alert.AlertAndRedirect("没有输入账号和密码！", "Login.aspx");


        }
        else
        {
            dr = data.GetDataReader("select * from  [StudentInfo] where xuehao='" + TxtUserName.Text.Trim() + "'and Pwd='" + TxtPassword.Text.Trim() + "'");
            if (dr.Read())
            {
                Session["user"] = dr["name"].ToString();

                Session["userid"] = dr["id"].ToString();
                Response.Redirect("Guest/main.html");

            }
            else
            {
                Alert.AlertAndRedirect("账号或者密码不对请重新登陆！", "Login.aspx");
            }
        }
    }

    private void chkADmin()
    {
        if (TxtUserName.Text == "" && TxtPassword.Text == "")
        {
            Alert.AlertAndRedirect("没有输入账号和密码！", "Login.aspx");


        }
        else
        {
            dr = data.GetDataReader("select * from  admin where name='" + TxtUserName.Text.Trim() + "'and Pwd='" + TxtPassword.Text.Trim() + "'");
            if (dr.Read())
            {
                Session["adminid"] = dr["id"].ToString();
                Session["admin"] = dr["name"].ToString();
                Response.Redirect("Admin/main.html");

            }
            else
            {
                Alert.AlertAndRedirect("管理员的账号或者密码不对请重新登陆！", "Login.aspx");
            }
        }
    }



    private void chksADmin()
    {
        if (TxtUserName.Text == "" && TxtPassword.Text == "")
        {
            Alert.AlertAndRedirect("请输入账号密码！", "Login.aspx");


        }
        else
        {
            dr = data.GetDataReader("select * from  superadmin where name='" + TxtUserName.Text.Trim() + "'and password='" + TxtPassword.Text.Trim() + "'");
            if (dr.Read())
            {
                Session["superadminid"] = dr["id"].ToString();
                Session["superadmin"] = dr["name"].ToString();
                Response.Redirect("superadmin/main.html");

            }
            else
            {
                Alert.AlertAndRedirect("账号或密码错误，请重新登录！", "Login.aspx");
            }
        }
    }




    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Identify.SelectedItem.Text == "后台管理员")
        {
            chkADmin();
        }
        if (Identify.SelectedItem.Text == "访客")
        {
            chkstudent();
        }
        if (Identify.SelectedItem.Text == "经销商")
        {
            cheTeachter();

        }


        if (Identify.SelectedItem.Text == "超级管理员")
        {
            chksADmin();
        }

    }
   
}
    

