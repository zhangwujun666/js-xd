<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="ShowTeachter.aspx.cs" Inherits="Student_ShowTeachter" Title="Untitled Page" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>AnyForWeb订单进销存处理系统</title>  <link  rel="stylesheet" href="../CSS/style.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="0" cellpadding="0" cellspacing="0" class="ShopInfo" width="100%">
        <tr>
            <td align="center" bgcolor="#ffffff" style="width: 99%; height: 29px">
                <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
                    style="width: 100%">
                    <tr>
                        <td align="left" colspan="4" style="width: 84px; height: 29px; background-color: #ffffff">
                            职工号：</td>
                        <td align="left" colspan="1" style="width: 300px; height: 29px; background-color: #ffffff">
                            <asp:TextBox ID="txtxuehao" runat="server" Width="139px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="width: 84px; height: 33px; background-color: #ffffff">
                            姓名：</td>
                        <td align="left" colspan="1" style="width: 300px; height: 33px; background-color: #ffffff">
                            <asp:TextBox ID="txtUser" runat="server" Width="139px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="width: 84px; height: 33px; background-color: #ffffff">
                            年龄：
                        </td>
                        <td align="left" colspan="1" style="width: 300px; height: 33px; background-color: #ffffff">
                            <asp:TextBox ID="txtnianling" runat="server" Width="44px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="width: 84px; height: 33px; background-color: #ffffff">
                            性别： &nbsp;</td>
                        <td align="left" colspan="1" style="width: 300px; height: 33px; background-color: #ffffff">
                            <asp:DropDownList ID="drsex" runat="server" Width="44px">
                                <asp:ListItem Selected="True">男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="width: 84px; height: 33px; background-color: #ffffff">
                            籍贯：</td>
                        <td align="left" colspan="1" style="width: 300px; height: 33px; background-color: #ffffff">
                            <asp:TextBox ID="txtjg" runat="server" Width="462px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="width: 84px; height: 33px; background-color: #ffffff">
                            联系方式：</td>
                        <td align="left" colspan="1" style="width: 300px; height: 33px; background-color: #ffffff">
                            <asp:TextBox ID="txttel" runat="server" Width="131px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="width: 84px; height: 33px; background-color: #ffffff">
                            政治面貌：</td>
                        <td align="left" colspan="1" style="width: 300px; height: 33px; background-color: #ffffff">
                            <asp:DropDownList ID="dropzzmm" runat="server" Width="109px">
                                <asp:ListItem Selected="True">党员</asp:ListItem>
                                <asp:ListItem>团员</asp:ListItem>
                                <asp:ListItem>群众</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="width: 84px; height: 33px; background-color: #ffffff">
                            出生年月：</td>
                        <td align="left" colspan="1" style="width: 300px; height: 33px; background-color: #ffffff">
                            <asp:TextBox ID="txtcsny" runat="server" onclick="fPopCalendar(event,this,this)" onfocus="this.select()" 
                                Width="131px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="width: 84px; height: 33px; background-color: #ffffff">
                            民族：</td>
                        <td align="left" colspan="1" style="width: 300px; height: 33px; background-color: #ffffff">
                            <asp:TextBox ID="txtmz" runat="server" Width="70px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
                        </td>
                    </tr>
                </table>
                &nbsp;</td>
        </tr>
    </table>
</div>  </form></body></html>

