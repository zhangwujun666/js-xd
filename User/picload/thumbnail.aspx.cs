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
using System.Collections.Generic;

public partial class thumbnail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		string id = Request.QueryString["imgname"] as string;
		if (id == null)
		{
			Response.StatusCode = 404;
			Response.Write("Not Found");
			Response.End();
			return;
		}

		Thumbnail thumbnails = Session["file_info"] as Thumbnail;

		if (thumbnails == null)
		{
			Response.StatusCode = 404;
			Response.Write("Not Found");
			Response.End();
			return;
		}


        if (thumbnails.ID == id)
        {
            Response.ContentType = "image/jpeg";
            Response.BinaryWrite(thumbnails.Data);
            Response.End();
            return;
        }
		

		// If we reach here then we didn't find the file id so return 404
		Response.StatusCode = 404;
		Response.Write("Not Found");
		Response.End();
    }
}
