using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class GetPass : Page
{
    private static int i;
    private static readonly string strCon = ConfigurationManager.ConnectionStrings["GetPass"].ToString();

    private SqlDataReader GetData(string strSql, string value)
    {
        var connection = new SqlConnection(strCon);
        connection.Open();
        var command = new SqlCommand(strSql, connection);
        command.Parameters.Add(new SqlParameter("@Value", SqlDbType.VarChar, 50));
        command.Parameters["@Value"].Value = value;
        return command.ExecuteReader();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnGet_Click(object sender, EventArgs e)
    {
        ++i;
        string name = txtName.Text.Trim();
        string answer = txtAnswer.Text.Trim();
        SqlDataReader reader = GetData("SELECT * FROM TeachterInfo WHERE xuehao = '" + name + "' AND Answer = @Value", answer);
        if (reader.Read())
        {
            if (answer == reader["Answer"].ToString())
            {
                txtPass.Text = reader["pwd"].ToString();
                RegisterStartupScript("true", "<script>alert('恭喜你密码已找回！！')</script>");
            }
        }
        else
        {
            RegisterStartupScript("false", "<script>alert('提示答案错误！请重新输入！')</script>");



            //if (i < 3)
            //{
            //    RegisterStartupScript("false", "<script>alert('提示答案错误！！你还有" + (3 - i) + "次机会！')</script>");
            //}
            //else
            //{
            //    i = 0;
            //    string strSql = "Update MyUser SET congealDate='" + DateTime.Now.ToString() + "' WHERE Name='" + name +
            //                    "' ";
            //    var connection = new SqlConnection(strCon);
            //    connection.Open();
            //    var command = new SqlCommand(strSql, connection);
            //    command.ExecuteNonQuery();
            //    RegisterStartupScript("false",
            //                          "<script>alert('您3次回答问题的机会已用完！在24小时后才可以使用此功能！');location='Default.aspx'</script>");
            //}
        }
    }

    //protected void btnNext_Click(object sender, EventArgs e)
    //{
    //    string name = txtName.Text.Trim();
    //    SqlDataReader reader = GetData("SELECT * FROM TeachterInfo WHERE xuehao = @value", name);
    //    if (reader.Read())
    //    {
    //        DateTime time = Convert.ToDateTime(reader["congealDate"]);
    //        TimeSpan timeSpan = DateTime.Now - time;
    //        int hours = Convert.ToInt32(timeSpan.TotalHours);
    //        if (hours > 24)
    //        {
    //            PanelInputName.Visible = false;
    //            PanelGetPass.Visible = true;
    //            txtQuestion.Text = reader["Question"].ToString();
    //        }
    //        else
    //        {
    //            RegisterStartupScript("", "<script>alert('还有" + (24 - hours) + "小时后可以使用该功能！！')</script>");
    //        }
    //    }
    //    else
    //    {
    //        RegisterStartupScript("false", "<script>alert('用户名不存在！！')</script>");
    //    }
    //}




    protected void btnNext_Click(object sender, EventArgs e)
    {
        string name = txtName.Text.Trim();
        SqlDataReader reader = GetData("SELECT * FROM TeachterInfo WHERE xuehao = @value", name);
        if (reader.Read())
        {
                PanelInputName.Visible = false;
                PanelGetPass.Visible = true;
                txtQuestion.Text = reader["Question"].ToString();
           
        }
        else
        {
            RegisterStartupScript("false", "<script>alert('用户名不存在！！')</script>");
        }
    }
}