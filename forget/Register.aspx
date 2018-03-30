<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>注册页面</title>
        <link href="css.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            body {
	        background:url(../img/loginbg.png)fixed center center no-repeat;
		    background-size: cover;
		    /*width: 100%;*/
	        margin-bottom: 0px;
	        margin-left: 97px;
	        margin-right: 97px;
            margin-top: 0px;
	        text-align: center;
            }
            h1{
                color:white;
                width:400px;

            }
            div{
                color:white;

            }
        </style>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <div style="text-align: center"></div>
            </div>
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
                    <td width="654" background="Images/zhecewenzi.jpg"></td>
                    <td width="51" background="Images/tou_6.gif"></td>
                </tr>
            </table>
            <table width="829" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="254" valign="top" background="Images/tou_7.gif" scope="row">
                        <table width="829" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <th width="290" height="23" scope="row"></th>
                                <td height="23" colspan="5" align="center"></td>
                                <td width="273" height="23"></td>
                            </tr>
                            <tr>
                                <th align="center" scope="row">
                                    &nbsp;
                                </th>
                                <td width="92" height="27" align="right" class="biaozhunziti">
                                    会员名：
                                </td>
                                <td colspan="4">
                                    <label>
                                        <asp:TextBox ID="txtName" runat="server" Width="135px"></asp:TextBox>
                                        <asp:RequiredFieldValidator
                                            ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" Display="Dynamic"
                                            ErrorMessage="用户名不能为空">
                                            *
                                        </asp:RequiredFieldValidator>
                                    </label>
                                </td>
                                <td>
                                    <asp:Button ID="btnIsName" runat="server" CausesValidation="False" Text="检测会员名" 
                                                onclick="btnIsName_Click" />
                                </td>
                            </tr>
                            <tr>
                                <th height="33" scope="row">
                                    &nbsp;
                                </th>
                                <td align="right" class="biaozhunziti">
                                    会员密码：
                                </td>
                                <td colspan="4">
                                    <asp:TextBox ID="txtPass" runat="server" Width="135px" TextMode="Password"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <th height="32" scope="row">
                                    &nbsp;
                                </th>
                                <td align="right" class="biaozhunziti">
                                    确认密码：
                                </td>
                                <td colspan="4">
                                    <asp:TextBox ID="txtValidatePass" runat="server" Width="135px" TextMode="Password"></asp:TextBox>
                                    <asp:CompareValidator
                                        ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtValidatePass"
                                        Display="Dynamic" ErrorMessage="两次密码不一致">
                                        *
                                    </asp:CompareValidator>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <th height="32" scope="row">
                                    &nbsp;
                                </th>
                                <td align="right" class="biaozhunziti">
                                    密码提示问题：
                                </td>
                                <td colspan="4">
                                    <asp:TextBox ID="txtPassQuestion" runat="server" Width="135px"></asp:TextBox>
                                    <asp:RequiredFieldValidator
                                        ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassQuestion"
                                        ErrorMessage="提示问题不能为空">
                                        *
                                    </asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <th height="31" scope="row">
                                    &nbsp;
                                </th>
                                <td align="right" class="biaozhunziti">
                                    密码提示答案：
                                </td>
                                <td colspan="4">
                                    <asp:TextBox ID="txtPassAnswer" runat="server" Width="135px"></asp:TextBox>
                                    <asp:RequiredFieldValidator
                                        ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassAnswer"
                                        ErrorMessage="密码提示答案不能为空">
                                        *
                                    </asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <th height="32" scope="row">
                                    &nbsp;
                                </th>
                                <td align="right" class="biaozhunziti">
                                    E-mail：
                                </td>
                                <td colspan="4">
                                    <asp:TextBox ID="txtEmail" runat="server" Width="135px"></asp:TextBox>
                                    <asp:RegularExpressionValidator
                                        ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                                        Display="Dynamic" ErrorMessage="邮件地址不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                        *
                                    </asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator
                                        ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="邮件地址必须填写">
                                        *
                                    </asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <th height="12" scope="row"></th>
                                <td height="12" class="biaozhunziti"></td>
                                <td height="12" colspan="4"></td>
                                <td height="12"></td>
                            </tr>
                            <tr>
                                <td height="15" align="center" scope="row">
                                    &nbsp;
                                </td>
                                <td height="15" align="center" scope="row">
                                    &nbsp;
                                </td>
                                <td width="68" height="15" align="center" scope="row">
                                    <asp:Button ID="btnRegister" runat="server" Text="注　册" 
                                                onclick="btnRegister_Click"/>
                                </td>
                                <td width="11" align="center" scope="row">
                                    &nbsp;
                                </td>
                                <td width="88" height="15" align="center" scope="row">
                                    <asp:Button ID="btnReturn" runat="server" Text="返　回" CausesValidation="False" PostBackUrl="~../Login.aspx" />
                                </td>
                                <td width="7" height="15" align="center" scope="row">
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
                    <td height="51" background="Images/tou_8.gif" scope="row" style="text-align: center">
                        &nbsp;
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
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