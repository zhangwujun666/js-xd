<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="addRoom.aspx.cs" Inherits="Teachter_addRoom" Title="Untitled Page" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>AnyForWeb订单进销存处理系统</title>  <link  rel="stylesheet" href="../CSS/style.css"/>
     <style type="text/css">
         .auto-style1 {
             height: 24px;
             width: 200px;
         }
         .auto-style2 {
             height: 23px;
             width: 200px;
         }
         .auto-style3 {
             /*width: 750px;*/
             height: 23px;
         }
         .auto-style4 {
             /*width: 866px;*/
             height: 23px;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="0" cellpadding="0" cellspacing="0" class="ShopInfo" width="100%">
        <tr>
            <td align="center" bgcolor="#ffffff" style="height: 30px">
                &nbsp;
                <table id="Table1" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td align="left" class="auto-style1">
                            产品名称：*</td>
                        <td align="left" style="width: 80%; height: 24px">
                            <asp:TextBox ID="TextBox1" runat="server" MaxLength="200" Width="163px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" class="auto-style2">
                            所属客户：</td>
                        <td align="left" style="width:80%; height: 23px">
                            <asp:DropDownList ID="ddxueyuan" runat="server" Width="145px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="left" class="auto-style2">
                            产品数量：</td>
                        <td align="left" class="auto-style4">
                            <asp:TextBox ID="txtRenShu" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" class="auto-style2">
                            单位：</td>
                        <td align="left" class="auto-style3">
                            <asp:TextBox ID="txtDiDian" runat="server" Width="351px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" class="auto-style2">
                            年产量：</td>
                        <td align="left" style="width: 80%; height: 23px">
                            <asp:TextBox ID="TextBox2" runat="server" Width="663px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" class="auto-style2">
                            备注信息：</td>
                        <td align="left" style="width: 80%; height: 23px">
                            <asp:TextBox ID="TextBox5" runat="server" Height="114px" MaxLength="200" TextMode="MultiLine"
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

