<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="myinfo.aspx.cs" Inherits="Student_myinfo" Title="Untitled Page" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>AnyForWeb订单进销存处理系统</title>  <link  rel="stylesheet" href="../CSS/style.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        style="width: 100%">
        <tr>
            <td align="left" colspan="4" style="width: 66px; height: 32px; background-color: #ffffff">
                学院：</td>
            <td align="left" colspan="1" style="width: 542px; height: 32px; background-color: #ffffff">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Width="149px">
                </asp:DropDownList></td>
        </tr>
    <tr>
        <td align="left" colspan="4" style="width: 66px; height: 32px; background-color: #ffffff">
            班级：</td>
        <td align="left" colspan="1" style="width: 542px; height: 32px; background-color: #ffffff">
            <asp:TextBox ID="banji" runat="server"></asp:TextBox></td>
    </tr>
        <tr>
            <td align="left" colspan="4" style="width: 66px; height: 28px; background-color: #ffffff">
                学号：</td>
            <td align="left" colspan="1" style="width: 542px; height: 28px; background-color: #ffffff">
                <asp:TextBox ID="txtxuehao" runat="server" Width="139px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 66px; height: 33px; background-color: #ffffff">
                姓名：</td>
            <td align="left" colspan="1" style="width: 542px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="txtUser" runat="server" Width="139px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 66px; height: 33px; background-color: #ffffff">
                性别： &nbsp;</td>
            <td align="left" colspan="1" style="width: 542px; height: 33px; background-color: #ffffff">
                <asp:DropDownList ID="drsex" runat="server" Width="44px">
                    <asp:ListItem Selected="True">男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 66px; height: 33px; background-color: #ffffff">
                联系方式：</td>
            <td align="left" colspan="1" style="width: 542px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="txttel" runat="server" Width="131px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="width: 66px; height: 33px; background-color: #ffffff">
                出生年月：</td>
            <td align="left" colspan="1" style="width: 542px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="txtcsny" runat="server" onclick="fPopCalendar(event,this,this)" onfocus="this.select()" 
                    Width="131px"></asp:TextBox></td>
        </tr>
    <tr>
        <td align="left" colspan="4" style="width: 66px; height: 33px; background-color: #ffffff">
            电子邮件：</td>
        <td align="left" colspan="1" style="width: 542px; height: 33px; background-color: #ffffff">
            <asp:TextBox ID="txtEmal" runat="server" Width="315px"></asp:TextBox></td>
    </tr>
        <tr>
            <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
                <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>&nbsp;
                <asp:ImageButton ID="ImageButtonSave" runat="server" ImageUrl="../Images/BtnSave.gif"
                    OnClick="ImageButtonSave_Click" /></td>
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
