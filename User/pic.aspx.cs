using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_pic : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            danwei.DataSource = data.GetDataReader("select * from  xueyuan ");
            danwei.DataTextField = "name";
            danwei.DataValueField = "id";
            danwei.DataBind();

        }
        //this.demo4.Text = Session["userid"].ToString();

        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../uploads/hp/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        this.demo.Text = up.s;

        string res1;
        upload up1 = new upload();
        res1 = up1.Up(file2, "../uploads/zz/");
        this.Label2.Visible = true;
        this.Label2.Text = up1.Resup[Convert.ToInt32(res1)];
        this.pic2.Text = up1.s1;
        this.demo1.Text = up1.s1;

        string res2;
        upload up2 = new upload();
        res2 = up2.Up(file3, "../uploads/zs/");
        this.Label3.Visible = true;
        this.Label3.Text = up2.Resup[Convert.ToInt32(res2)];
        this.pic3.Text = up2.s2;
        this.demo2.Text = up2.s2;

        string res3;
        upload up3 = new upload();
        res3 = up3.Up(file4, "../uploads/zl/");
        this.Labe14.Visible = true;
        this.Labe14.Text = up3.Resup[Convert.ToInt32(res3)];
        this.pic4.Text = up3.s3;
        this.demo5.Text = up3.s3;

        data.RunSql("insert into pic(name,hp,zz,zs,zl,upload)values('" + Session["danwei"].ToString() + "','" + up.s + "','" + up1.s1 + "','" + up2.s2 + "','" + up3.s3 + "','" + '是' + "')  ");

       

        
    }


    private void getxueyuan()
    {

        danwei.DataSource = data.GetDataReader("select * from  xueyuan ");
        danwei.DataTextField = "name";
        danwei.DataValueField = "id";
        danwei.DataBind();

    }
   
    
}