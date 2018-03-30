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
public partial class Teachter_addRoom : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
            getxueyuan();
        }


    }
 
    private void getxueyuan()
    {

        ddxueyuan.DataSource = data.GetDataReader("select * from  xueyuan ");
        ddxueyuan.DataTextField = "name";
        ddxueyuan.DataValueField = "id";
        ddxueyuan.DataBind();

    }

    protected void ImageButtonSave_Click(object sender, ImageClickEventArgs e)
    {
        data.RunSql("insert into Room(name,ds,xueyuanid,xueyuan,ZongRenshu,DiDian,HUoJiang)values('" + TextBox1.Text + "','" + TextBox5.Text + "','" + ddxueyuan.SelectedValue + "','" + ddxueyuan.SelectedItem.Text + "','" + txtRenShu.Text + "','" + txtDiDian.Text + "','"+TextBox2.Text+"')  ");
        Alert.AlertAndRedirect("添加成功", "RoomList.aspx");
    }
    protected void ImageButtonBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("addRoom.aspx");
    }
  
}
