<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="Modifytestplan.aspx.cs" Inherits="Admin_Modifytestplan" Title="Untitled Page" %>
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
                <table id="Table1" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="width: 90px; height: 24px">
                            实验名称：*</td>
                        <td align="left" style="width: 232px; height: 24px">
                            <asp:TextBox ID="TextBox1" runat="server" MaxLength="200" Width="163px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 23px">
                            班级：</td>
                        <td align="left" style="width: 232px; height: 23px">
                            <asp:DropDownList ID="ddxueyuan" runat="server" Width="165px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 23px">
                            实验科目：</td>
                        <td align="left" style="width: 232px; height: 23px">
                            <asp:DropDownList ID="ddkecheng" runat="server" Width="145px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 23px">
                            备注：</td>
                        <td align="left" style="width: 232px; height: 23px">
                            <asp:TextBox ID="TextBox5" runat="server" Height="114px" MaxLength="200" TextMode="MultiLine"
                                Width="371px"></asp:TextBox></td>
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

