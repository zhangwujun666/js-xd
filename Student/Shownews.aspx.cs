﻿using System;
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

public partial class Student_Shownews : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    public string DownPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            GetArticle();

        }
    }


    private void GetArticle()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  tb_News where id=" + id);
        dr.Read();
        Label1.Text = dr["name"].ToString();
        Label2.Text = dr["ds"].ToString();


    }

}

