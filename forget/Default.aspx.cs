using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnEnter_Click(object sender, EventArgs e)
    {
        string name = txtName.Text.Trim();
        string password = txtPass.Text.Trim();
        string strSQL = "SELECT COUNT(*) FROM MyUser WHERE Name = '" + name + "' AND Pass = '" + password + "'";
        string strCon = ConfigurationManager.ConnectionStrings["GetPass"].ToString();
        var connection = new SqlConnection(strCon);
        connection.Open();
        var command = new SqlCommand(strSQL, connection);
        if (Convert.ToInt32(command.ExecuteScalar()) > 0)
        {
            RegisterStartupScript("", "<script>alert('登录成功！')</script>");
        }
        else
        {
            RegisterStartupScript("", "<script>alert('登录失败！')</script>");
        }
    }
}