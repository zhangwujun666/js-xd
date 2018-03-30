﻿<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="addtest.aspx.cs"  EnableEventValidation="false"   Inherits="Student_addtest" Title="Untitled Page" %>
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
                <asp:GridView ID="gvFilms" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="gvFilms_PageIndexChanging"
                    OnRowDataBound="gvFilms_RowDataBound" PageSize="12" Width="100%">
                    <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                        NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                    <RowStyle HorizontalAlign="Left" />
                    <Columns>
                        <asp:TemplateField HeaderText="实验名称">
                            <ItemTemplate>
                                <asp:Label ID="name" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                      
                        <asp:TemplateField HeaderText="科目">
                            <ItemTemplate>
                                <asp:Label ID="kemuname" runat="server" Text='<%# Bind("kemuname") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="学院">
                            <ItemTemplate>
                                <asp:Label ID="xueyuanname" runat="server" Text='<%# Bind("xueyuanname") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:TemplateField>    <asp:TemplateField HeaderText="教师姓名">
                            <ItemTemplate>
                                <asp:Label ID="TName" runat="server" Text='<%# Bind("TName") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:TemplateField>
                        
                          <asp:TemplateField HeaderText="添加时间">
                            <ItemTemplate>
                                <asp:Label ID="Addtime" runat="server" Text='<%# Bind("addtime","{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="做实验">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "testContent.aspx?id="+Eval("id") %>'
                                    Text="做实验" Width="67px"></asp:HyperLink>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="30px" />
                        </asp:TemplateField>
                        
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
            </td>
        </tr>
        <tr>
            <td align="center" bgcolor="#ffffff" style="height: 30px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" OnClientClick="javascript:return confirm('需要导出吗？');"
                    Text="导出到EXCEL打印" /></td>
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>


