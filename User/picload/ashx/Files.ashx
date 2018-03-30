<%@ WebHandler Language="c#" Class="File_WebHandler" Debug="true" %>

using System;
using System.Web;
using System.IO;
using System.Text.RegularExpressions;

public class File_WebHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState 
{
    public void ProcessRequest(HttpContext context)
    {
        HttpPostedFile file = context.Request.Files["file"];
        if (file.ContentLength > 0)
        {
            string imgName = DateTime.Now.ToString("yyyMMddHHmmssfffffff");
            Thumbnail ximg = thumImage(file, imgName, 800, 800);
            //把存储有内存流的字节型赋值给session
            //此处的Session作用：
            //1.从session中取出数据显示到页面中（实现预览）
            //2.从session中获取图片字节数组存储到指定位置
            context.Session["file_info"] = ximg;
            context.Response.Write("{ path: \"" + imgName + "\", name: \"" + imgName + "\" }");
        }
    }

   
    /// <summary> 
    /// 生成等比缩略图
    /// </summary> 
    /// <param name="upImage">HttpPostedFile控件</param>
    /// <param name="intThumbWidth">生成缩略图的宽度</param> 
    /// <param name="intThumbHeight">生成缩略图的高度</param> 
    /// <returns>缩略图名称</returns> 
    public static Thumbnail thumImage(HttpPostedFile upImage,string imgName, int intThumbWidth, int intThumbHeight)
    {
            HttpPostedFile myFile = upImage;
            using (System.Drawing.Image sourceImage = System.Drawing.Image.FromStream(myFile.InputStream))
            {
                //获取原图宽度和高度 
                int width = sourceImage.Width;
                int height = sourceImage.Height;
                int smallWidth;
                int smallHeight;

                /****************************等比缩小图片，多出的部分用白色代替（开始）***********************/
                if (width > height)
                {
                    smallWidth = intThumbWidth;
                    double h = Convert.ToDouble(intThumbWidth) / Convert.ToDouble(width) * Convert.ToDouble(height);
                    smallHeight = Convert.ToInt32(h);
                }
                else
                {
                    smallHeight = intThumbHeight;
                    double k = Convert.ToDouble(intThumbHeight) / Convert.ToDouble(height) * width;
                    smallWidth = Convert.ToInt32(k);
                }
                /***************************等比缩小图片，多出的部分用白色代替（开始****************************/

                
               
                //新建一个图板,以最小等比例压缩大小绘制原图 
                using (System.Drawing.Image bitmap = new System.Drawing.Bitmap(smallWidth, smallHeight))
                {
                    //绘制中间图 
                    using (System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(bitmap))
                    {
                        //高清,平滑 
                        g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High;
                        g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
                        g.Clear(System.Drawing.Color.White);//控制背景颜色
                        g.DrawImage(
                        sourceImage,
                        new System.Drawing.Rectangle(0, 0, smallWidth, smallHeight),
                        new System.Drawing.Rectangle(0, 0, width, height),
                        System.Drawing.GraphicsUnit.Pixel
                        );
                        g.Dispose();
                        //实例化一个内存流
                        MemoryStream ms = new MemoryStream();
                        //将图片想保存到内存流
                        bitmap.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
                        //把图片名称和内存流转换成字节数组（byte[]类型）
                        Thumbnail thumb = new Thumbnail(imgName, ms.GetBuffer());
                        return thumb;
                    }
                }
            }    
    }
    
    
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}