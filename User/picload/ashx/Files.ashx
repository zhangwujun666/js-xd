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
            //�Ѵ洢���ڴ������ֽ��͸�ֵ��session
            //�˴���Session���ã�
            //1.��session��ȡ��������ʾ��ҳ���У�ʵ��Ԥ����
            //2.��session�л�ȡͼƬ�ֽ�����洢��ָ��λ��
            context.Session["file_info"] = ximg;
            context.Response.Write("{ path: \"" + imgName + "\", name: \"" + imgName + "\" }");
        }
    }

   
    /// <summary> 
    /// ���ɵȱ�����ͼ
    /// </summary> 
    /// <param name="upImage">HttpPostedFile�ؼ�</param>
    /// <param name="intThumbWidth">��������ͼ�Ŀ��</param> 
    /// <param name="intThumbHeight">��������ͼ�ĸ߶�</param> 
    /// <returns>����ͼ����</returns> 
    public static Thumbnail thumImage(HttpPostedFile upImage,string imgName, int intThumbWidth, int intThumbHeight)
    {
            HttpPostedFile myFile = upImage;
            using (System.Drawing.Image sourceImage = System.Drawing.Image.FromStream(myFile.InputStream))
            {
                //��ȡԭͼ��Ⱥ͸߶� 
                int width = sourceImage.Width;
                int height = sourceImage.Height;
                int smallWidth;
                int smallHeight;

                /****************************�ȱ���СͼƬ������Ĳ����ð�ɫ���棨��ʼ��***********************/
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
                /***************************�ȱ���СͼƬ������Ĳ����ð�ɫ���棨��ʼ****************************/

                
               
                //�½�һ��ͼ��,����С�ȱ���ѹ����С����ԭͼ 
                using (System.Drawing.Image bitmap = new System.Drawing.Bitmap(smallWidth, smallHeight))
                {
                    //�����м�ͼ 
                    using (System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(bitmap))
                    {
                        //����,ƽ�� 
                        g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High;
                        g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
                        g.Clear(System.Drawing.Color.White);//���Ʊ�����ɫ
                        g.DrawImage(
                        sourceImage,
                        new System.Drawing.Rectangle(0, 0, smallWidth, smallHeight),
                        new System.Drawing.Rectangle(0, 0, width, height),
                        System.Drawing.GraphicsUnit.Pixel
                        );
                        g.Dispose();
                        //ʵ����һ���ڴ���
                        MemoryStream ms = new MemoryStream();
                        //��ͼƬ�뱣�浽�ڴ���
                        bitmap.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
                        //��ͼƬ���ƺ��ڴ���ת�����ֽ����飨byte[]���ͣ�
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