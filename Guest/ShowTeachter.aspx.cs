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
public partial class Student_ShowTeachter : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
          

            SqlHelper data = new SqlHelper();

            int id = int.Parse(Request.QueryString["id"].ToString());
            SqlDataReader dr = data.GetDataReader("select * from TeachterInfo where id=" + id);
            dr.Read();
            txtxuehao.Text = dr["xuehao"].ToString();
            txtUser.Text = dr["name"].ToString();
            txtnianling.Text = dr["nianling"].ToString();
            drsex.Items.Add(dr["sex"].ToString());
       
            txtjg.Text = dr["jiguan"].ToString();
            txttel.Text = dr["tel"].ToString();

          
            txtmz.Text = dr["mz"].ToString();
        }
    }


  


}
