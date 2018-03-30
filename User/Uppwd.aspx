<%@ Page Language="C#"   AutoEventWireup="true" CodeFile="Uppwd.aspx.cs" Inherits="Teachter_Uppwd" Title="Untitled Page" %>
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
                &nbsp;
                <table id="Table1" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="width: 90px; height: 24px">
                            原密码：*</td>
                        <td align="left" style="width: 232px; height: 24px">
                            <asp:TextBox ID="txtpwd1" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpwd1"
                                ErrorMessage="请输入密码"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td style="width: 90px; height: 24px">
                            密码：</td>
                        <td align="left" style="width: 232px; height: 24px">
                            <asp:TextBox ID="txtpwd2" runat="server" TextMode="Password" Width="138px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd2"
                                ErrorMessage="输入新密码"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 24px">
                            确认密码：</td>
                        <td align="left" style="width: 232px; height: 24px">
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="138px"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd2"
                                ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="密码不一致"></asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1"
                                ErrorMessage="请确认密码"></asp:RequiredFieldValidator></td>
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

