<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Admin_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <title>AnyForWeb订单进销存处理系统</title>
<link  rel="stylesheet" href="../CSS/style.css"/>
<script type="text/javascript" src="js/jquery.js"></script>

</head>


<body>

    <div class="place">
    <span>位置：</span><a href="#">首页</a>    </div>

    <div class="mainindex">


        <div class="welinfo">
            <span>
                <iframe name="sinaWeatherTool" src="http://weather.news.sina.com.cn/chajian/iframe/weatherStyle2.html?city=%E8%8B%8F%E5%B7%9E" width="200" height="20" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
            </span><a href="#"></a>
        </div>
    </div>


     <div style="position: static; left: 0px; bottom: 0px;">

        &nbsp;&nbsp;&nbsp;&nbsp;您好，您现在是访客身份！(<asp:Label ID="user" runat="server" Text="Label"></asp:Label>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        您的IP地址是：<asp:Label ID="nativeIP" runat="server" Text="1"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        欢迎登录本系统！
        
    </div>



    <%--<h2>欢迎使用AnyForWeb订单进销存处理系统</h2>--%>
    <tr align="center"> </tr>
    <p>&nbsp;</p>
    
    
    
    
    
   

    
   
     <iframe src="../Calendar.aspx" style=" border:none; height:310px; width: auto "> </iframe>
     <iframe src="../time2.aspx" style=" float:right ;border:none; height:310px; width: auto "> </iframe>
     
     
     
     
     
     
      <tr align="center">
    <h1 align="center">公告板</h1>
      <%--<img src="../Images/gonggaoban.png" width="602" height="85" >--%>
    </tr>
<form id="form1" runat="server">
  <div>
    <table border="1" cellpadding="0" cellspacing="0" class="ShopInfo" width="100%">
        <tr>
            <td align="left" bgcolor="#ffffff" style="height: 29px">
                <asp:GridView ID="gvFilms" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="gvFilms_PageIndexChanging"
                    OnRowDataBound="gvFilms_RowDataBound" OnRowDeleting="gvFilms_RowDeleting" PageSize="12"
                    Width=100%>
                    <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                        NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                    <RowStyle HorizontalAlign="Left" />
                    <Columns>
                        <asp:TemplateField HeaderText="标题">
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("name") %>' ></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="60px" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="内容">
                            <ItemTemplate>
                                <asp:Label ID="Labe13" runat="server" Text='<%# Bind("ds") %>' ></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="260px" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="添加时间" SortExpression="num">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Addtime","{0:d}") %>' ></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="10px" />
                        </asp:TemplateField>
                       <%-- <asp:TemplateField HeaderText="查看">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Shownews.aspx?id="+Eval("id") %>'
                                    Text="查看"></asp:HyperLink>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="50px" />
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
                                    <asp:Label ID="Label1" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>页
                                </td>
                                <td align="right" width="20%">
                                </td>
                            </tr>
                        </table>
                    </PagerTemplate>
                    <PagerStyle BackColor="#F6F6F6" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#F6F6F6" />
                </asp:GridView>
                <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    
  </div>
</form>




    
   
 

   
</body>
</html>
