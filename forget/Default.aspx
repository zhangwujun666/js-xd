<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>主页</title>
        <link href="css.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            body {
                background-color: #EEF2FB;
                margin-bottom: 0px;
                margin-left: 97px;
                margin-right: 97px;
                margin-top: 0px;
            }
        </style>
    </head>
    <body>
        <form id="form1" runat="server">
            <table width="829" height="0" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="134" valign="top" background="Images/tou.gif"></td>
                </tr>
            </table>
            <table width="829" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="58" height="43" background="Images/tou_1.gif"></td>
                    <td width="106" height="43" background="Images/tou_2.gif"></td>
                    <td width="287" background="Images/tou_3.gif"></td>
                    <td width="327" background="Images/charu.gif"></td>
                    <td width="51" background="Images/tou_4.gif"></td>
                </tr>
            </table>
            <table width="829" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <th width="60" height="59" background="Images/tou_5.gif" scope="row"></th>
                    <td width="64" bgcolor="#FFFFFF"></td>
                    <td width="654" background="Images/tou_beifen.gif"></td>
                    <td width="51" background="Images/tou_6.gif"></td>
                </tr>
            </table>
            <table width="829" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="254" valign="top" background="Images/tou_7.gif" scope="row">
                        <table width="829" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <th width="285" height="38" scope="row">
                                    &nbsp;
                                </th>
                                <td height="38" colspan="5" align="center">
                                    &nbsp;
                                </td>
                                <td width="278" height="38">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <th align="center" scope="row">
                                    &nbsp;
                                </th>
                                <td width="67" height="27" class="biaozhunziti">
                                    登录名称：
                                </td>
                                <td colspan="4">
                                    <label>
                                        <asp:TextBox ID="txtName" runat="server" Width="142px"></asp:TextBox>
                                        <span style="color: #ff0000">*</span>
                                    </label>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <th height="37" scope="row">
                                    &nbsp;
                                </th>
                                <td class="biaozhunziti">
                                    登录密码：
                                </td>
                                <td colspan="4">
                                    <asp:TextBox ID="txtPass" runat="server" Width="142px" TextMode="Password"></asp:TextBox>
                                    <span style="color: #ff0000">
                                        *
                                    </span>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <th height="5" scope="row"></th>
                                <td height="5" colspan="5"></td>
                                <td height="5"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    &nbsp;
                                </th>
                                <td align="center">
                                    &nbsp;
                                </td>
                                <td colspan="2" align="center">
                                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Register.aspx" CssClass="chaolianjie">
                                        会员注册
                                    </asp:LinkButton>
                                    <a href="#" class="chaolianjie"></a>
                                </td>
                                <td width="70" align="center">
                                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/GetPass.aspx" Width="72px" CssClass="chaolianjie">
                                        密码找回
                                    </asp:LinkButton>
                                    <a href="#" class="chaolianjie"></a>
                                </td>
                                <td width="49" align="center">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <th height="5" scope="row"></th>
                                <td height="5" colspan="5" align="center"></td>
                                <td height="5"></td>
                            </tr>
                            <tr>
                                <td height="18" colspan="7" align="center" scope="row">
                                    <img src="Images/xian.jpg" width="561" height="1" />
                                </td>
                            </tr>
                            <tr>
                                <td height="15" align="center" scope="row">
                                    &nbsp;
                                </td>
                                <td height="15" align="center" scope="row">
                                    &nbsp;
                                </td>
                                <td width="65" height="15" align="center" scope="row">
                                    <asp:Button ID="btnEnter" runat="server" Text="登　录" onclick="btnEnter_Click"/>
                                </td>
                                <td width="15" align="center" scope="row">
                                    &nbsp;
                                </td>
                                <td height="15" align="center" scope="row">
                                    <asp:Button ID="Button2" runat="server" Text="返　回" PostBackUrl="Login.aspx"/>
                                </td>
                                <td height="15" align="center" scope="row">
                                    &nbsp;
                                </td>
                                <td height="15" align="center" scope="row">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table width="829" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="51" background="Images/tou_8.gif" scope="row">
                        &nbsp;
                    </td>
                </tr>
            </table>
            <table width="829" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td bgcolor="#FFFFFF" scope="row">
                        &nbsp;
                    </td>
                </tr>
            </table>
            <table width="829" border="0" cellpadding="0" cellspacing="0">
                <tr>
                                                <div style="position:absolute;left:144px; bottom:12px;">苏州向达环境科技有限公司</div>
                            <div style="position:absolute;right:142px; bottom:10px;">版本号： v1.0 Beta</div></td>
                </tr>
            </table>
        </form>
    </body>
</html>