﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QiCaiInfoManger.aspx.cs" Inherits="Admin_QiCaiInfoManger" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>设备信息管理</title>
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
        <td height="31"><div class="titlebt">设备管理</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif" style="height: 49px"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
        <tr>
            <td background="images/mail_leftbg.gif" style="height: 28px" valign="middle">
            </td>
            <td bgcolor="#f7f8f9" style="height: 28px" valign="top">危险废物名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" /></td>
            <td background="images/mail_rightbg.gif" style="height: 28px">
            </td>
        </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
        <asp:GridView ID="dlinfo" runat="server" AllowPaging="True"  AutoGenerateColumns="False"
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" DataKeyNames="id" OnPageIndexChanging="dlinfo_PageIndexChanging"
            OnRowDataBound="dlinfo_RowDataBound" OnRowDeleting="dlinfo_RowDeleting" Width="100%">
            <PagerSettings FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PageButtonCount="6"
                PreviousPageText="上一页" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <RowStyle ForeColor="#000066" HorizontalAlign="Left" />
            <Columns>
                <asp:TemplateField HeaderText="危险废物名称">
                    <ItemTemplate>
                        <asp:Label ID="name" runat="server" Text='<%# Bind("name") %>' Width="98px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="危废类别">
                    <ItemTemplate>
                        <asp:Label ID="TypeName" runat="server" Text='<%# Bind("TypeName") %>' Width="98px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="已完成转移记录">
                    <ItemTemplate>
                        <asp:Label ID="danjia" runat="server" Text='<%# Bind("danjia") %>' Width="98px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="最新申请转移数量（库存量）">
                    <ItemTemplate>
                        <asp:Label ID="Specification" runat="server" Text='<%# Bind("Specification") %>' Width="98px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="编号">
                    <ItemTemplate>
                        <asp:Label ID="Code" runat="server" Text='<%# Bind("Code") %>' Width="98px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                 
                 <asp:TemplateField HeaderText="主要成分和含量">
                    <ItemTemplate>
                        <asp:Label ID="SHTel" runat="server" Text='<%# Bind("SHTel") %>' Width="98px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="年申请转移量">
                    <ItemTemplate>
                        <asp:Label ID="yanSe" runat="server" Text='<%# Bind("yanSe") %>' Width="98px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>




                <asp:TemplateField HeaderText="本批次转移量">
                    <ItemTemplate>
                        <asp:Label ID="move" runat="server" Text='<%# Bind("move") %>' Width="98px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>


                <asp:TemplateField HeaderText="单位">
                    <ItemTemplate>
                        <asp:Label ID="unit" runat="server" Text='<%# Bind("unit") %>' Width="98px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>



                 <asp:TemplateField HeaderText="转移批次">
                    <ItemTemplate>
                        <asp:Label ID="ds" runat="server" Text='<%# Bind("ds") %>' Width="98px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>







                <asp:TemplateField HeaderText="修改">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "Modify_QiCaiInfo.aspx?id="+Eval("id") %>'
                            Text="修改"></asp:HyperLink>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="删除" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"  OnClientClick="javascript:return confirm('确定删除吗？');" 
                            Text="删除" Width="71px"></asp:LinkButton>
                    </ItemTemplate>
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
                            <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>
                            页 第
                            <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>
                            页
                        </td>
                        <td align="right" width="20%">
                        </td>
                    </tr>
                </table>
            </PagerTemplate>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#006699" CssClass="ct" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
  </tr>
        <tr>
            <td background="images/mail_leftbg.gif" valign="middle">
            </td>
            <td align="center" bgcolor="#f7f8f9" valign="top">
                &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                
                
                
                
                
                 <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" OnClientClick="javascript:return confirm('需要导出吗？');"
                    Text="导出到EXCEL打印" />
                
                
                
            </td>
            <td background="images/mail_rightbg.gif">
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
