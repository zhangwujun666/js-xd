using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class User_info : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        dr = data.GetDataReader("select * from  [pic] where upload='是'");
        if (dr.Read())
        {
            using (SqlConnection con = new SqlConnection("Data Source=qds164713652.my3w.com;Initial Catalog=qds164713652_db;Persist Security Info=True;User ID=qds164713652;Password=zhangwujun666"))
            {
                //根据输入的名称去匹配获取数据
                string strSQL = "select hp from pic where name='" + Session["danwei"].ToString() + "'";
                SqlDataAdapter da = new SqlDataAdapter(strSQL, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                //将取得的路径设置到Image控件的ImageUrl属性中去
                this.Image1.ImageUrl = "../" + ds.Tables[0].Rows[0]["hp"].ToString();
                this.demo.Text = "../" + ds.Tables[0].Rows[0]["hp"].ToString();
            }




            using (SqlConnection con = new SqlConnection("Data Source=qds164713652.my3w.com;Initial Catalog=qds164713652_db;Persist Security Info=True;User ID=qds164713652;Password=zhangwujun666"))
            {
                //根据输入的名称去匹配获取数据
                string strSQL = "select zz from pic where name='" + Session["danwei"].ToString() + "'";
                SqlDataAdapter da = new SqlDataAdapter(strSQL, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                //将取得的路径设置到Image控件的ImageUrl属性中去
                this.Image2.ImageUrl = "../" + ds.Tables[0].Rows[0]["zz"].ToString();
                this.demo2.Text = "../" + ds.Tables[0].Rows[0]["zz"].ToString();
            }



            using (SqlConnection con = new SqlConnection("Data Source=qds164713652.my3w.com;Initial Catalog=qds164713652_db;Persist Security Info=True;User ID=qds164713652;Password=zhangwujun666"))
            {
                //根据输入的名称去匹配获取数据
                string strSQL = "select zs from pic where name='" + Session["danwei"].ToString() + "'";
                SqlDataAdapter da = new SqlDataAdapter(strSQL, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                //将取得的路径设置到Image控件的ImageUrl属性中去
                this.Image3.ImageUrl = "../" + ds.Tables[0].Rows[0]["zs"].ToString();
                this.demo3.Text = "../" + ds.Tables[0].Rows[0]["zs"].ToString();
            }

            using (SqlConnection con = new SqlConnection("Data Source=qds164713652.my3w.com;Initial Catalog=qds164713652_db;Persist Security Info=True;User ID=qds164713652;Password=zhangwujun666"))
            {
                //根据输入的名称去匹配获取数据
                string strSQL = "select zl from pic where name='" + Session["danwei"].ToString() + "'";
                SqlDataAdapter da = new SqlDataAdapter(strSQL, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                //将取得的路径设置到Image控件的ImageUrl属性中去
                this.Image4.ImageUrl = "../" + ds.Tables[0].Rows[0]["zl"].ToString();
                this.demo4.Text = "../" + ds.Tables[0].Rows[0]["zl"].ToString();
            }
        }
        else
        {
            Alert.AlertAndRedirect("您还没有上传您的公司证件信息，请上传！", "pic.aspx");
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void leibie_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    
}