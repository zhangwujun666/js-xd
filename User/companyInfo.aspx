﻿UploadPic.aspx

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="companyInfo.aspx.cs" Inherits="Pic_Try.UploadPic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>图片上传和显示</title>
    <style type="text/css">
    .pic_text{ color:Red;}
    .pic_label { color:Gray; margin-top:5px; margin-bottom:5px;}
    .pic_image { margin:5px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="pic_image"><asp:Image ID="pic" runat="server" /></div>
    <div><asp:FileUpload ID="pic_upload" runat="server" /><asp:Label ID="lbl_pic" runat="server" class="pic_text"></asp:Label></div>
    <div class="pic_label">上传图片格式为.jpg, .gif, .bmp,.png,图片大小不得超过8M</div>
    <div><asp:Button ID="btn_upload" runat="server"  Text="上传" onclick="btn_upload_Click"/></div>
    </form>
  
</body>
</html>