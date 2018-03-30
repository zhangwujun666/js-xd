<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>AnyForWeb订单进销存处理系统</title>
    <LINK rel="stylesheet" type="text/css" href="img/login.css">
    <LINK rel="stylesheet" type="text/css" href="img/dialog.css">
    <LINK rel="stylesheet" type="text/css" href="img/login(1).css">
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
    <script src="h5/ban.js"></script> 
    <script type="text/javascript">
        $(document).ready(function () {
            $("div.login").hide();
            //$("div.login").animate({ height: 'toggle'},"slow");
            $("div.login").fadeIn(3000);
        });
    </script>
    <style type="text/css"     >

        #actionMessage1 {
            width: 306px;
            height: 45px;
        }
        /*div.login {
            visibility:hidden;
        }
        div.login_show {
            visibility:visible;
        }*/
        canvas{
            z-index:-1;
            position:fixed;
        }
    </style>
</head>
<body style="background:url(../img/loginbg.png)fixed center center no-repeat;
			 background-size: cover;
			 width: 100%;">
    <canvas></canvas>
    <form id="form1" runat="server">
   <!--re_top -->
        <br />
        <br />
        <br />
        <br />
<DIV class="login"> <IMG style="    width: 350px;
    /* align-items: center; */
    padding-left: 70px;" src="../img/loginlogo.png">
<DIV class="re_login">

<DIV class="re_login_box">
<DIV class="dl font" style="width: 102%">   	    		AnyForWeb订单进销存处理系统   	    	</DIV>
<DIV class="w1"><SPAN>用户名：	
    <asp:TextBox ID="TxtUserName" runat="server" Width="182px"></asp:TextBox>&nbsp;&nbsp; </SPAN></DIV>
<DIV class="w1"><SPAN>密&nbsp;&nbsp;&nbsp;码：	
    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" Width="182px"></asp:TextBox></SPAN></DIV>
<DIV class="w1"><SPAN>角 &nbsp;&nbsp; 色：<asp:DropDownList ID="Identify" runat="server" Style="border-right: #ccc 1px solid;
        border-top: #ccc 1px solid; padding-left: 24px; font-weight: 800; font-size: 14px;
        background: url(images/password_bg.gif) #fff no-repeat left 50%; margin: 0px;
        border-left: #ccc 1px solid; border-bottom: #ccc 1px solid; font-family: Arial, Helvetica, sans-serif"
        Width="185px">
        
        <asp:ListItem>经销商</asp:ListItem>
        <asp:ListItem>后台管理员</asp:ListItem>
        <%--<asp:ListItem>超级管理员</asp:ListItem>--%>
       
    </asp:DropDownList></SPAN><A><SPAN></SPAN></A></DIV>

<DIV class="w1">
    <asp:ImageButton ID="ImageButton2" runat="server" Height="38px" ImageUrl="~/img/11.png"
        OnClick="ImageButton1_Click" Width="269px" />&nbsp;<DIV id="actionMessage0" class="oneline red_font" >


    <DIV id="actionMessage1" class="oneline red_font" >&nbsp;&nbsp; <a href="adduser.aspx" style="color:red">用户注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="forget/GetPass.aspx" style="color:red">忘记密码</a><BR>&nbsp; 

    <%--</DIV> <BR><a href="Guest/main.html" style="color: red">访客登录</a>&nbsp;</DIV></DIV>--%>


<DIV id="actionMessage" class="oneline red_font" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <BR>


    </DIV></DIV>
    </DIV></DIV>   
    
    <!--re_login_box -->
</DIV><!--re_login --></DIV>

<%--<DIV class="clear"></DIV>--%>
<DIV class="re_footer">
<P>© AnyForWeb订单进销存处理系统 版权所有
</P>
    <p>
        网站备案号：苏ICP备16041050号-1
    </p>
</DIV>
    </form>
</body>
</html>
