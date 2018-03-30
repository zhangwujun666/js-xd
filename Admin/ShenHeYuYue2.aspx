<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShenHeYuYue2.aspx.cs" Inherits="Admin_ShenHeYuYue2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>AnyForWeb订单进销存处理系统</title>  <link  rel="stylesheet" href="../CSS/style.css"/>

                  <script language="javascript" type="text/javascript" src="../JavaScript/Calendar.js"></script>


</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="0" cellpadding="0" cellspacing="0" class="ShopInfo" width="100%">



        <tr>
           
            <td bgcolor="#f7f8f9" style="height: 28px" valign="top">订单商品品类：<asp:DropDownList ID="TextBox1" runat="server" Width="200px" autopostback="true"></asp:DropDownList>
                <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="查询" /></td>
            <td background="images/mail_rightbg.gif" style="height: 28px">
            </td>
        </tr>

        <tr>
           
            <td bgcolor="#f7f8f9" style="height: 28px" valign="top">所属经销商:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="TextBox2" runat="server" Width="200px" autopostback="true"></asp:DropDownList>
                <asp:Button ID="Button3" runat="server" OnClick="Button2_Click" Text="查询" /></td>
            <td background="images/mail_rightbg.gif" style="height: 28px">
            </td>
        </tr>


         <tr>
           
            <td bgcolor="#f7f8f9" style="height: 28px" valign="top">商品代码:&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="TextBox3" runat="server" Width="200px" autopostback="true"></asp:DropDownList>
                <asp:Button ID="Button5" runat="server" OnClick="Button4_Click" Text="查询" /></td>
            <td background="images/mail_rightbg.gif" style="height: 28px">
            </td>
        </tr>

        <tr>
           
            <td bgcolor="#f7f8f9" style="height: 15px" valign="top">订单提交时间时间：&nbsp;&nbsp;&nbsp;&nbsp;从
                <asp:TextBox ID="txtbtime" runat="server" onclick="fPopCalendar(event,this,this)" onfocus="this.select()" ></asp:TextBox>&nbsp;到
                <asp:TextBox ID="txtEtime" runat="server" onclick="fPopCalendar(event,this,this)" onfocus="this.select()" ></asp:TextBox>
                <asp:Button ID="Button4" runat="server" OnClick="Button3_Click" Text="查询" /></td>
            <td background="images/mail_rightbg.gif" style="height: 28px">
            </td>
        </tr>


         <td bgcolor="#f7f8f9" style="height: 15px" valign="top" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="重置查询" /></td>



        <tr>
            <td align="center" bgcolor="#ffffff" style="height: 30px">
                <asp:GridView ID="gvFilms" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="gvFilms_PageIndexChanging"
                    OnRowDataBound="gvFilms_RowDataBound" PageSize="12" Width="100%">
                    <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                        NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                    <RowStyle HorizontalAlign="Left" />
                    <Columns>
                        <asp:TemplateField HeaderText="订单商品品类">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("leibie") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                     
                      
                        <asp:TemplateField HeaderText="商品名称">
                            <ItemTemplate>
                                <asp:Label ID="emal" runat="server" Text='<%# Bind("suchen") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="所属经销商">
                            <ItemTemplate>
                                <asp:Label ID="sex" runat="server" Text='<%# Bind("code") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="商品数量">
                            <ItemTemplate>
                                <asp:Label ID="RoomName" runat="server" Text='<%# Bind("shengqingliang") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="	处理状态（是否处理）">
                            <ItemTemplate>
                                <asp:Label ID="IsChk" runat="server" Text='<%# Bind("IsChk") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                           <asp:TemplateField HeaderText="订单提交时间时间">
                            <ItemTemplate>
                                <asp:Label ID="Addtime" runat="server" Text='<%# Bind("time","{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                        
                        
                           <asp:TemplateField HeaderText="商品代码">
                            <ItemTemplate>
                                <asp:Label ID="YYTime" runat="server" Text='<%# Bind("danwei") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                         
                        <%--<asp:TemplateField HeaderText="选择">
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </EditItemTemplate>
                            <HeaderTemplate>
                                选择
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="chkSelect" runat="server" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="40px" />
                        </asp:TemplateField>--%>
                    </Columns>
                    <PagerTemplate>
                        <table border="0" width="100%">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                        CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                                    共
                                    <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>页
                                    第
                                    <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>页
                                </td>
                                <td align="right" width="20%">
                                </td>
                            </tr>
                        </table>
                    </PagerTemplate>
                    <PagerStyle BackColor="#F6F6F6" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#F6F6F6" />
                </asp:GridView>
                <%--<asp:Button ID="btnSelectAll" runat="server" OnClick="btnSelectAll_Click" Text="全选" />
                <asp:Button ID="btnDel" runat="server" OnClick="btnDel_Click" OnClientClick="javascript:return confirm('确定通过审核吗？');"
                    Text="审核" />--%>

                 <asp:Button ID="Button1" runat="server" OnClick="Button5_Click" OnClientClick="javascript:return confirm('需要导出吗？');"
                    Text="导出到EXCEL打印" />

                &nbsp;
            </td>
        </tr>
    </table>
</div>  </form></body></html>
