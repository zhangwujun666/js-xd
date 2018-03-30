using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Register : Page
{
    private bool IsName(string name)
    {
        string strCon = ConfigurationManager.ConnectionStrings["GetPass"].ToString();
        var conn = new SqlConnection(strCon);
        conn.Open();
        string strSql = "SELECT COUNT(*) FROM MyUser WHERE Name = '" + txtName.Text.Trim() + "'";
        var command = new SqlCommand(strSql, conn);
        if (Convert.ToInt32(command.ExecuteScalar()) > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnIsName_Click(object sender, EventArgs e)
    {
        if (txtName.Text != "")
        {
            if (IsName(txtName.Text))
            {
                RegisterStartupScript("", "<script>alert('用户名已存在')</script>");
            }
            RegisterStartupScript("", "<script>alert('可以注册')</script>");
        }
        else
        {
            RegisterStartupScript("", "<script>alert('用户名不能为空！')</script>");
        }
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string name = txtName.Text.Trim();
        string password = txtPass.Text.Trim();
        string passQuestion = txtPassQuestion.Text.Trim();
        string passAnswer = txtPassAnswer.Text.Trim();
        string email = txtEmail.Text.Trim();

        if (!IsName(name))
        {
            var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GetPass"].ToString());
            conn.Open();
            string strSql = "INSERT INTO MyUser VALUES('" + name + "','" + password + "','" + passQuestion + "','" +
                            passAnswer + "','" + email + "','" + DateTime.Now.ToString() + "')";
            var command = new SqlCommand(strSql, conn);
            if (Convert.ToInt32(command.ExecuteNonQuery()) > 0)
            {
                RegisterStartupScript("true", "<script>alert('注册成功！')</script>");
                txtName.Text =
                    txtPass.Text = txtPassQuestion.Text = txtPassQuestion.Text = txtEmail.Text = txtPassAnswer.Text = "";
            }
            else
            {
                RegisterStartupScript("false", "<script>alert('注册失败！')</script>");
            }
            conn.Close();
        }
        else
        {
            RegisterStartupScript("", "<script>alert('用户名已存在')</script>");
        }
    }
}