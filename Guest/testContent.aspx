<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="testContent.aspx.cs" Inherits="Student_testContent" Title="Untitled Page" %>
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
            <td align="center" bgcolor="#ffffff" style="height: 30px; width: 1381px;">
                &nbsp;
                <table id="Table1" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td style="width: 114px; height: 24px" align="left">
                            实验名称：*</td>
                        <td align="left" style="width: 733px; height: 24px">
                            <asp:TextBox ID="TextBox1" runat="server" MaxLength="200" Width="163px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 114px; height: 23px" align="left">
                            内容：</td>
                        <td align="left" style="width: 733px; height: 23px">
                            <asp:TextBox ID="TextBox5" runat="server" Height="114px" MaxLength="200" TextMode="MultiLine"
                                Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 114px; height: 23px" align="left">
                            下载任务书：</td>
                        <td align="left" style="width: 733px; height: 23px">
                            <asp:HyperLink ID="HyperLink1" runat="server">下载任务书</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="width: 114px; height: 23px" align="left">
                            上传实验报告：</td>
                        <td align="left" style="width: 733px; height: 23px">
                            <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                                id="file1" runat="server" class="inputBox" style="width: 141px" type="file" /><asp:Button
                                    ID="Button1" runat="server" CausesValidation="False" CssClass="formbutton" Height="22px"
                                    OnClick="Button1_Click" Text="上传文件" Width="97px" /><asp:Label ID="Label1" runat="server"
                                        Visible="False" Width="60px"></asp:Label>
                            &nbsp; &nbsp; &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 114px; height: 23px">
                            实验耗材：</td>
                        <td align="left" style="width: 733px; height: 23px">
                            <asp:TextBox ID="TextBox3" runat="server" Width="919px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 114px; height: 23px" align="left">
                            实验结论：</td>
                        <td align="left" style="width: 733px; height: 23px">
                            <asp:TextBox ID="TextBox2" runat="server" Height="114px" MaxLength="200" TextMode="MultiLine"
                                Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 34px">
                            <hr />
                            <asp:ImageButton ID="ImageButtonSave" runat="server" ImageUrl="../Images/BtnSave.gif"
                                OnClick="ImageButtonSave_Click" /><asp:ImageButton ID="ImageButtonBack" runat="server"
                                    ImageUrl="../Images/BtnBack.gif" OnClick="ImageButtonBack_Click" /></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 15px">
                            <asp:Label ID="LabelWarningMessage" runat="server"></asp:Label></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>  </form></body></html>

