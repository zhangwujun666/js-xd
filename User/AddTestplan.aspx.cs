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
public partial class Admin_AddTestplan : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();

    //protected void leibie_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //    string proID = this.leibie.SelectedValue;
    //    SqlConnection con = new SqlConnection("Data Source=qds164713652.my3w.com;Initial Catalog=qds164713652_db;Persist Security Info=True;User ID=qds164713652;Password=zhangwujun666");
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select * from weifeiInfo where pid=" + proID, con);
    //    SqlDataReader sdr = cmd.ExecuteReader();
    //    this.baweima.DataSource = sdr;
    //    this.baweima.DataTextField = "daima";
    //    this.baweima.DataValueField = "id";
    //    this.baweima.DataBind();
    //    this.code.Text = proID;
    //    sdr.Close();
    //    con.Close();



    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        //getkemu();

        //getxueyuan();


        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=qds164713652.my3w.com;Initial Catalog=qds164713652_db;Persist Security Info=True;User ID=qds164713652;Password=zhangwujun666");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from kecheng", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            this.leibie.DataSource = sdr;
            this.leibie.DataTextField = "name";
            this.leibie.DataValueField = "id";
            this.leibie.DataBind();
            sdr.Close();
            //绑定市
            SqlCommand cmdcity = new SqlCommand("select * from weifeiInfo where pid=" + this.leibie.SelectedValue, con);
            SqlDataReader sdr1 = cmdcity.ExecuteReader();
            this.baweima.DataSource = sdr1;
            this.baweima.DataTextField = "daima";
            this.baweima.DataValueField = "id";
            this.baweima.DataBind();
            
            sdr1.Close();
            con.Close();

        }
        //this.code.Text = this.leibie.SelectedValue;




        string proID = this.leibie.SelectedValue;
        SqlConnection con1 = new SqlConnection("Data Source=qds164713652.my3w.com;Initial Catalog=qds164713652_db;Persist Security Info=True;User ID=qds164713652;Password=zhangwujun666");
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("select * from weifeiInfo where pid=" + proID, con1);
        SqlDataReader sdr2 = cmd1.ExecuteReader();
        this.baweima.DataSource = sdr2;
        this.baweima.DataTextField = "daima";
        this.baweima.DataValueField = "id";
        this.baweima.DataBind();
        //this.code.Text = proID;
        sdr2.Close();
        con1.Close();

        //if (!IsPostBack)
        //{
        //    getkemu();
        //    getxueyuan();



        //    baweima.DataSource = data.GetDataReader("select * from  weifeiInfo  ");
        //    baweima.DataTextField = "daima";
        //    baweima.DataValueField = "id";
        //    baweima.DataBind();
        //}


    }
    private void getkemu()
    {

        leibie.DataSource = data.GetDataReader("select * from  kecheng ");
        leibie.DataTextField = "name";
        leibie.DataValueField = "id";
        leibie.DataBind();

    }
    //private void getxueyuan()
    //{

    //    danwei.DataSource = data.GetDataReader("select * from  xueyuan ");
    //    danwei.DataTextField = "name";
    //    danwei.DataValueField = "id";
    //    danwei.DataBind();

    //}

    protected void ImageButtonSave_Click(object sender, ImageClickEventArgs e)
    {
        data.RunSql("insert into wfshengqing(leibie,suchen,code,shengqingliang,danwei,time,beizhu,Tid,IsChk)values('" + leibie.SelectedItem.Text + "','" + TextBox3.Text + "','" + Session["danwei"].ToString() + "','" + TextBox1.Text + "','" + baweima.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + Session["userid"].ToString() + "','" + "否" + "')  ");
        Alert.AlertAndRedirect("添加成功,等待管理员审核！", "testplanlist.aspx");
    }
    protected void ImageButtonBack_Click(object sender, ImageClickEventArgs e)
    {

    }
    
}
