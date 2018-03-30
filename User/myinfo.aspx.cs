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
public partial class Teachter_myinfo : System.Web.UI.Page
{

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            

            SqlHelper data = new SqlHelper();

          
            SqlDataReader dr = data.GetDataReader("select * from TeachterInfo where id='" + Session["userid"].ToString()+ "'");
            dr.Read();
            txtxuehao.Text = dr["xuehao"].ToString();
            txtUser.Text = dr["name"].ToString();
            txtnianling.Text = dr["nianling"].ToString();
            drsex.Items.Add(dr["sex"].ToString());
            txtjg.Text = dr["jiguan"].ToString();
            txttel.Text = dr["tel"].ToString();
            txtEmal.Text = dr["Emal"].ToString();
        }
    }


    protected void ImageButtonSave_Click(object sender, ImageClickEventArgs e)
    {
        
        SqlHelper update = new SqlHelper();


        update.RunSql("update  TeachterInfo set name='" + txtUser.Text + "',nianling='" + txtnianling.Text + "',sex='" + drsex.SelectedItem.Text + "',jiguan='" + txtjg.Text + "',tel='" + txttel.Text + "',Emal='" + txtEmal.Text + "'  where id='" + Session["userid"].ToString() + "'");

        Alert.AlertAndRedirect("修改成功", "myinfo.aspx");

    }

    //private void Getxueyuan()
    //{

    //    DropDownList2.DataSource = data.GetDataReader("select * from  xueyuan");
    //    DropDownList2.DataTextField = "Name";
    //    DropDownList2.DataValueField = "id";
    //    DropDownList2.DataBind();

    //}


}
