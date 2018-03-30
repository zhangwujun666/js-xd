<%@ Page Language="C#"   AutoEventWireup="true" CodeFile="baogaoContent.aspx.cs" Inherits="Teachter_baogaoContent" Title="Untitled Page" %>
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
            <td align="center" bgcolor="#ffffff" height="30">
                <table id="Table1" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td style="width: 90px; height: 27px">
                            实验名称：</td>
                        <td align="left" style="width: 320px; height: 27px">
                            <asp:TextBox ID="txtName" runat="server" MaxLength="200" ReadOnly="True" Width="467px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 24px">
                            文档下载：</td>
                        <td align="left" style="width: 320px; height: 24px">
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red">下载实验报告</asp:HyperLink></td>
                    </tr>
                    <tr style="color: #000000">
                        <td style="width: 90px; height: 24px">
                            得分：</td>
                        <td align="left" style="width: 320px; height: 24px">
                            <asp:TextBox ID="TextBox3" runat="server" MaxLength="200" ReadOnly="True" Width="75px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 24px">
                            实验用户：</td>
                        <td align="left" style="width: 320px; height: 24px">
                            <asp:TextBox ID="TextBox4" runat="server" MaxLength="200" ReadOnly="True" Width="55px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 22px">
                            时间：</td>
                        <td align="left" style="width: 320px; height: 22px">
                            <asp:TextBox ID="TextBox5" runat="server" MaxLength="200" ReadOnly="True" Width="189px"></asp:TextBox></td>
                    </tr>
                    <tr style="color: #000000">
                        <td style="width: 90px; height: 24px">
                            实验结论：</td>
                        <td align="left" style="width: 320px; height: 24px">
                            <asp:TextBox ID="TextBox1" runat="server" Height="227px" ReadOnly="True" TextMode="MultiLine"
                                Width="551px"></asp:TextBox></td>
                    </tr>
                    <tr style="color: #000000">
                        <td style="width: 90px; height: 24px">
                            教师评论：</td>
                        <td align="left" style="width: 320px; height: 24px">
                            <asp:TextBox ID="TextBox2" runat="server" Height="227px" ReadOnly="True" TextMode="MultiLine"
                                Width="551px"></asp:TextBox></td>
                    </tr>
                </table>
                &nbsp;
            </td>
        </tr>
    </table>
</div>  </form></body></html>

