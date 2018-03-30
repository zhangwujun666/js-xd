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
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["file_info"] != null)
        {
            Thumbnail thumbnails = Session["file_info"] as Thumbnail;
            string UploadPath = Server.MapPath("UpLoad/");

            FileStream fs = new FileStream(UploadPath + thumbnails.ID + ".jpg", FileMode.Create);
            BinaryWriter bw = new BinaryWriter(fs);
            bw.Write(thumbnails.Data);
            bw.Close();
            fs.Close();

            Session.Clear();
        }
    }
}
