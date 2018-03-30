<%@ Page Language="C#" AutoEventWireup="true" CodeFile="info.aspx.cs" Inherits="User_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
            width: 311px;
        }

        body
        {
	        /*font-family: "微软雅黑";*/
	        font-size: 9pt;
            color: white;
	        /*background-color: #cccccc;*/
            /*background:url(../img/mainbg.jpg) fixed center center no-repeat ;
            background-size: cover; 
            width: 100%;*/
            background:url(../img/mainbg.jpg) fixed center center no-repeat ;
            background-size: cover; 
            width: 100%;
            overflow-x:hidden;
        }


    </style>


</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div><asp:Image ID="Image9" runat="server" ImageUrl="..\Images\Survey1.gif" width="100%" height="5px" background-repeat="repeat-x"></asp:Image></div>

        <div align="center"><h1>销售许可</h1></div>
        <div align="center"><asp:Image ID="Image1" runat="server" ImageUrl="" width=80% ></asp:Image></div>
        <div><asp:Image ID="Image7" runat="server" ImageUrl="..\Images\Survey1.gif" width="100%" height="5px" background-repeat="repeat-x"></asp:Image></div>
        
        <div align="center"><h1>营业执照</h1></div>
        <div align="center"><asp:Image ID="Image2" runat="server" ImageUrl="" width=80% ></asp:Image></div>
        <div><asp:Image ID="Image5" runat="server" ImageUrl="..\Images\Survey1.gif" width="100%" height="5px" background-repeat="repeat-x"></asp:Image></div>
        
        <div align="center"><h1>组织机构代码证书</h1></div>
        <div align="center"><asp:Image ID="Image3" runat="server" ImageUrl="" width=80% ></asp:Image></div>
        <div><asp:Image ID="Image6" runat="server" ImageUrl="..\Images\Survey1.gif" width="100%" height="5px" background-repeat="repeat-x"></asp:Image></div>

        <div align="center"><h1>公司开票资料</h1></div>
        <div align="center"><asp:Image ID="Image4" runat="server" ImageUrl="" width=80% ></asp:Image></div>
        <div><asp:Image ID="Image8" runat="server" ImageUrl="..\Images\Survey1.gif" width="100%" height="5px" background-repeat="repeat-x"></asp:Image></div>

        </div>
        <div>
            <div><asp:Label ID="demo" runat="server" visible="false">11111</asp:Label></div>
            <div><asp:Label ID="demo2" runat="server" visible="false">11111</asp:Label></div>
            <div><asp:Label ID="demo3" runat="server" visible="false">11111</asp:Label></div>
            <div><asp:Label ID="demo4" runat="server" visible="false">11111</asp:Label></div>
    <asp:Button  ID="Button1" runat="server" CausesValidation="False" CssClass="formbutton" Height="22px" OnClick="Button1_Click" Text="浏览图片" Width="102px" autopostback="true" visible="false"/>
        
    </div>


    </form>
</body>
</html>
