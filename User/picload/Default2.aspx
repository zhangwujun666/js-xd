<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题页</title>
    <script src="script/FileImg/CJL.0.1.min.js"></script>
    <script src="script/FileImg/QuickUpload.js"></script>
    <script src="script/FileImg/jquery-1.7.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    上传文件：
    <input id="idFile" name="file" type="file" />
    <asp:Button ID="Button1" runat="server" Text="上传" onclick="Button1_Click" />
    <div id="status">
    </div>
    <div id="img">
    </div>
    <script>
        var file = $$("idFile"), fu = new QuickUpload(file, {
            action: "ashx/Files.ashx",
            onReady: function () {
                showHtml("<img src='images/loading.gif'/>");
            },
            onFinish: function (iframe) {
                try {//处理返回信息(需要后台配合)
                    var info = eval("(" + iframe.contentWindow.document.body.innerHTML + ")");
                    show("上传完成");
                } catch (e) {//获取数据出错
                    show("上传失败"); stop(); return;
                }
                $("#img").append("<img src='thumbnail.aspx?imgname=" + info.path + "' title='" + info.name + "'/>");


                //销毁程序
                //this.dispose();
            }
        });

        file.onchange = function () { fu.upload(); }
        function show(m) { $("#status").text(m); }
        function showHtml(m) { $("#status").html(m); }
    </script>
    </form>
</body>
</html>
