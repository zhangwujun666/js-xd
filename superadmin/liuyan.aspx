<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="liuyan.aspx.cs" Inherits="Admin_liuyan" Title="Untitled Page" %>
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
                <asp:GridView ID="GV_list" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    DataKeyNames="id" OnPageIndexChanging="GV_list_PageIndexChanging" PageSize="6"
                    Width="729px">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Addhuifu.aspx?id={0}"
                            DataTextField="Topic" HeaderText="标题" NavigateUrl="AddToBook.aspx">
                            <HeaderStyle Height="30px" Width="200px" />
                            <ItemStyle Height="30px" Width="200px" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="AddUser" HeaderText="发布者">
                            <HeaderStyle Height="30px" Width="100px" />
                            <ItemStyle Height="30px" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Addtime" DataFormatString="{0:d}" HeaderText="时间">
                            <HeaderStyle Height="30px" Width="100px" />
                            <ItemStyle Height="30px" Width="100px" />
                        </asp:BoundField>
                    </Columns>
                    <PagerStyle BackColor="#C0FFC0" BorderStyle="Outset" />
                    <HeaderStyle BackColor="#C0FFC0" />
                    <AlternatingRowStyle BackColor="#E0E0E0" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</div>  </form></body></html>

