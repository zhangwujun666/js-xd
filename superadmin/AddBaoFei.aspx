<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddBaoFei.aspx.cs" Inherits="Admin_AddBaoFei" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>设备采购</title>
    
    <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
</style>
<link href="images/skin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif" style="height: 49px"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="12" valign="top" background="images/content-bg.gif" style="height: 49px">&nbsp;</td>
    <td width="10" valign="top" background="images/content-bg.gif" style="height: 49px">&nbsp;</td>
    <td width="630" valign="top" background="images/content-bg.gif" style="height: 49px"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">
            危废处理</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif" style="height: 49px"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr height="20">
              <td width="16%" lang="zh-cn">污控设施类别：</td>
                <td width="84%" lang="zh-cn">
                    <span></span><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                        OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="172px">
                    </asp:DropDownList></td>
            </tr>
        <tr height="20">
          <td lang="zh-cn" style="height: 20px">危废名称：</td>
            <td lang="zh-cn" style="height: 20px"><asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                    Width="328px">
                </asp:DropDownList></td>
        </tr>
        <tr height="20">
          <td>企业名称：</td>
            <td><asp:Label ID="Label1" runat="server"></asp:Label>
              <input id="Hidden1" runat="server" type="hidden" /></td>
        </tr>
        <tr height="20">
          <td style="height: 20px">数量：</td>
            <td style="height: 20px"><asp:Label ID="Label2" runat="server"></asp:Label></td>
        </tr>
        </table>
    </td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
  </tr>
        <tr>
            <td background="images/mail_leftbg.gif" valign="middle" style="height: 19px">
            </td>
            <td align="center" bgcolor="#f7f8f9" valign="top" style="height: 19px">&nbsp;</td>
            <td align="left" bgcolor="#f7f8f9" valign="top" style="height: 19px">&nbsp;</td>
            <td align="center" bgcolor="#f7f8f9" valign="top" style="height: 19px">
                输入处理信息</td>
            <td background="images/mail_rightbg.gif" style="height: 19px">
            </td>
        </tr>
        <tr>
            <td background="images/mail_leftbg.gif" style="height: 27px" valign="middle">
            </td>
            <td align="left" bgcolor="#f7f8f9" style="height: 27px" valign="top">&nbsp;</td>
            <td align="left" bgcolor="#f7f8f9" style="height: 27px" valign="top">&nbsp;</td>
            <td align="center" bgcolor="#f7f8f9" style="height: 27px" valign="top">
                通风量：<asp:TextBox ID="TextBox1" runat="server" Width="110px"  ></asp:TextBox>
                单位（***）<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td background="images/mail_rightbg.gif" style="height: 27px">
            </td>
        </tr>
        <tr>
            <td background="images/mail_leftbg.gif" style="height: 23px" valign="middle">
            </td>
            <td align="left" bgcolor="#f7f8f9" style="height: 23px" valign="top">&nbsp;</td>
            <td align="left" bgcolor="#f7f8f9" style="height: 23px" valign="top">&nbsp;</td>
            <td align="center" bgcolor="#f7f8f9" style="height: 23px" valign="top">
                处理工艺：<asp:TextBox ID="TextBox3" runat="server" Width="693px"></asp:TextBox></td>
            <td background="images/mail_rightbg.gif" style="height: 23px">
            </td>
        </tr>
        <tr>
            <td background="images/mail_leftbg.gif" style="height: 19px" valign="middle">
            </td>
            <td align="center" bgcolor="#f7f8f9" style="height: 19px" valign="top">&nbsp;</td>
            <td align="center" bgcolor="#f7f8f9" style="height: 19px" valign="top">&nbsp;</td>
            <td align="center" bgcolor="#f7f8f9" style="height: 19px" valign="top">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确 认" />
                &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td background="images/mail_rightbg.gif" style="height: 19px">
            </td>
        </tr>
  <tr>
    <td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td background="images/buttom_bgs.gif">&nbsp;</td>
    <td background="images/buttom_bgs.gif">&nbsp;</td>
    <td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
