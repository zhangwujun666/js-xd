<%@ Page Language="C#"   AutoEventWireup="true" CodeFile="Shownews.aspx.cs" Inherits="Teachter_Shownews" Title="Untitled Page" %>
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
            <td align="center" bgcolor="#ffffff" style="height: 30px">
                &nbsp;
                <table id="Table1" border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr>
                        <td style="width: 90px; height: 24px">
                            公告标题：*</td>
                        <td align="left" style="width: 444px; height: 24px">
                            <asp:Label ID="Label1" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 23px">
                            内容：</td>
                        <td align="left" style="width: 444px; height: 23px">
                            <asp:Label ID="Label2" runat="server"></asp:Label></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>  </form></body></html>

