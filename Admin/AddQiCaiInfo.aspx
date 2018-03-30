<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddQiCaiInfo.aspx.cs" Inherits="Admin_AddQiCaiInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>设备管理</title>
        <script language="javascript" type="text/javascript" src="../JavaScript/Calendar.js"></script>
    
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
    <td valign="top" background="images/content-bg.gif" style="height: 49px"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">
            添加信息</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif" style="height: 49px"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="height: 228px">
            <tr height="20">
              <td width="30%" lang="zh-cn">危险废物名称：</td>
                <td width="70%" lang="zh-cn">
                    <span></span><asp:TextBox ID="txtname" runat="server" Width="353px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="必填"></asp:RequiredFieldValidator>
               
                </td>
            </tr>
            <tr height="20">
              <td>编号：</td>
                <td><asp:TextBox ID="TextBox1" runat="server" Width="212px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="必填"></asp:RequiredFieldValidator>
               
                </td>
            </tr>
        <tr height="20">
          <td>主要成分和含量：</td>
            <td><asp:TextBox ID="TextBox2" runat="server" Width="212px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="必填"></asp:RequiredFieldValidator> </td>
        </tr>
        <tr height="20">
          <td style="height: 20px">年申请转移量：</td>
            <td style="height: 20px"><asp:TextBox ID="TextBox3" runat="server" Width="212px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
            <tr>
              <td class="style1" style="height: 22px"><span class="style1" style="height: 22px">危险废物种类：</span></td>
                <td class="style1" style="height: 22px"><asp:DropDownList ID="DropDownList1" runat="server"
                        Width="137px">
                  </asp:DropDownList>
                </td>
            </tr>
            <tr height="20">
              <td>已完成转移记录：</td>
                <td><asp:TextBox ID="txtdanjia" runat="server" Width="86px"></asp:TextBox>
                </td>
            </tr>
            <tr height="20">
              <td>最新申请转移数量（库存量）：</td>
                <td><asp:TextBox ID="txtSpecification" runat="server" Width="189px"></asp:TextBox>
                </td>
            </tr>
             
            <tr height="20">
              <td>本批次转移量：</td>
                <td><asp:TextBox ID="TextBox4" runat="server" Width="212px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="必填"></asp:RequiredFieldValidator></td>
            </tr>
            <tr height="20">
              <td>单位：</td>
                <td><asp:TextBox ID="TextBox5" runat="server" Width="212px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="必填"></asp:RequiredFieldValidator> </td>
            </tr>
             




         <tr height="20">
           <td>转移批次：</td>
                <td><asp:TextBox ID="txtds" runat="server" Width="212px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtds" ErrorMessage="必填"></asp:RequiredFieldValidator> </td>
            </tr>






            <%--<tr height="20">
                <td align="center" style="height: 20px">
                    <span lang="zh-cn">转移批次</span></td>
            </tr>
            <tr height="20">
                <td align="center">
                    <asp:TextBox ID="txtds" runat="server" Height="81px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>
            </tr>--%>





        </table>
    </td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
  </tr>
        <tr>
            <td background="images/mail_leftbg.gif" valign="middle" style="height: 19px">
            </td>
            <td align="center" bgcolor="#f7f8f9" valign="top" style="height: 19px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" />
                &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td background="images/mail_rightbg.gif" style="height: 19px">
            </td>
        </tr>
  <tr>
    <td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
