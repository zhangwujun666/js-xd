<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="adduser.aspx.cs" Inherits="adduser" Title="Untitled Page" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>AnyForWeb订单进销存处理系统</title>  <link  rel="stylesheet" href="../CSS/style.css"/>
     <style type="text/css">
         .auto-style1 {
             height: 32px;
             width: 268435264px;
         }
         .auto-style2 {
             height: 28px;
             width: 268435264px;
         }
         .auto-style3 {
             height: 33px;
             width: 268435264px;
         }
         .auto-style4 {
             width: 611px;
             height: 33px;
         }
     </style>
</head>
<body>
    <form id="form" runat="server">
    <div>
       <script language="javascript" type="text/javascript" src="../JavaScript/Calendar.js"></script>
        <table border="0" cellpadding="0" cellspacing="0" class="ShopInfo" width="100%">
        <tr>
            <td align="center" bgcolor="#ffffff" style="width: 99%; height: 29px">
                <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
                    style="width: 100%">
                    <tr>
                        <td align="left" colspan="4" style="background-color: #ffffff" class="auto-style1">
                            所属客户：</td>
                        <td width="611" colspan="1" align="left" style="width: 90%; height: 32px; background-color: #ffffff">
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Width="149px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="background-color: #ffffff" class="auto-style2">
                            会员编号：</td>
                        <td align="left" colspan="1" style="width: 611px; height: 28px; background-color: #ffffff">
                            <asp:TextBox ID="txtxuehao" runat="server" Width="139px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="background-color: #ffffff" class="auto-style3">
                            姓名：</td>
                        <td align="left" colspan="1" style="width: 611px; height: 33px; background-color: #ffffff">
                            <asp:TextBox ID="txtUser" runat="server" Width="139px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="background-color: #ffffff" class="auto-style3">
                            会员代号：
                        </td>
                        <td align="left" colspan="1" style="width: 611px; height: 33px; background-color: #ffffff">
                            <asp:TextBox ID="txtnianling" runat="server" Width="192px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="background-color: #ffffff" class="auto-style3">
                            性别： &nbsp;</td>
                        <td align="left" colspan="1" style="width: 611px; height: 33px; background-color: #ffffff">
                            <asp:DropDownList ID="drsex" runat="server" Width="44px">
                                <asp:ListItem Selected="True">男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="background-color: #ffffff" class="auto-style3">
                            会员级别</td>
                        <td align="left" colspan="1" style="background-color: #ffffff" class="auto-style4">
                            <asp:TextBox ID="txtjg" runat="server" Width="192px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="background-color: #ffffff" class="auto-style3">
                            联系方式：</td>
                        <td align="left" colspan="1" style="width: 611px; height: 33px; background-color: #ffffff">
                            <asp:TextBox ID="txttel" runat="server" Width="131px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="background-color: #ffffff" class="auto-style3">
                            电子邮件：</td>
                        <td align="left" colspan="1" style="width: 611px; height: 33px; background-color: #ffffff">
                            <asp:TextBox ID="txtEmal" runat="server" Width="368px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
                            <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>&nbsp;
                            <asp:ImageButton ID="ImageButtonSave" runat="server" ImageUrl="../Images/BtnSave.gif"
                                OnClick="ImageButtonSave_Click" />
                            <asp:ImageButton ID="ImageButtonSave2" runat="server" ImageUrl="../Images/BtnBack.gif"
                                postbackurl="Login.aspx" />
                        </td>
                    </tr>
                </table>
                &nbsp;</td>
        </tr>
    </table>
</div>  </form></body></html>

