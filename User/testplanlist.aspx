<%@ Page Language="C#"   AutoEventWireup="true" CodeFile="testplanlist.aspx.cs"  EnableEventValidation="false"  Inherits="Admin_testplanlist" Title="Untitled Page" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>AnyForWeb订单进销存处理系统</title>  
    <link  rel="stylesheet" href="../CSS/style.css"/>
    <style type="text/css">
        #nav { 
                width: 400px;
                height: 500px;
                border: 8px solid black;
                margin: 0 auto;
             }
    </style>
    <script type="text/javascript" src="http://cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
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
                        <asp:TemplateField HeaderText="商品品类名称">
                            <ItemTemplate>
                                <asp:Label ID="leibie" runat="server" Text='<%# Bind("leibie") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                     
                      
                        <asp:TemplateField HeaderText="商品名称">
                            <ItemTemplate>
                                <asp:Label ID="suchen" runat="server" Text='<%# Bind("suchen") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="所属经销商">
                            <ItemTemplate>
                                <asp:Label ID="baweima" runat="server" Text='<%# Bind("code") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="订单商品数量">
                            <ItemTemplate>
                                <asp:Label ID="shengqingliang" runat="server" Text='<%# Bind("shengqingliang") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="订单商品代码">
                            <ItemTemplate>
                                <asp:Label ID="danwei" runat="server" Text='<%# Bind("danwei") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                           <asp:TemplateField HeaderText="订单提交时间">
                            <ItemTemplate>
                                <asp:Label ID="shijian" runat="server" Text='<%# Bind("time","{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                        
                        
                           <asp:TemplateField HeaderText="备注">
                            <ItemTemplate>
                                <asp:Label ID="beizhu" runat="server" Text='<%# Bind("beizhu") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="200px" />
                        </asp:TemplateField>
                        <%--<asp:TemplateField HeaderText="修改">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Modifytestplan.aspx?id="+Eval("id") %>'
                                    Text="修改" Width="62px"></asp:HyperLink>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="30px" />
                        </asp:TemplateField>--%>
                        <asp:TemplateField HeaderText="选择">
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
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="支付订单">
                            <EditItemTemplate>
                                <asp:CheckBox ID="Pay" runat="server" />
                            </EditItemTemplate>
                            <HeaderTemplate>
                                支付订单
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="pay" runat="server" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="150px" />
                        </asp:TemplateField>
                    </Columns>
                    <PagerTemplate>
                        <table border="0" width="100%">
                            <tr>
                                
                                    <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                        CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %> ">下一页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                                    共
                                    <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>页
                                    第
                                    <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>页
                                </td>
                                 align="right" width="20%">
                                </td>
                            </tr>
                        </table>
                    </PagerTemplate>
                    <PagerStyle BackColor="#F6F6F6" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#F6F6F6" />
                </asp:GridView>
                <asp:Button ID="btnSelectAll" runat="server" OnClick="btnSelectAll_Click" Text="全选" />
                <asp:Button ID="btnDel" runat="server" OnClick="btnDel_Click" OnClientClick="javascript:return confirm('确定删除吗？');"
                    Text="删除" />
                &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" OnClientClick="javascript:return confirm('需要导出吗？');"
                    Text="导出到EXCEL打印" />
                
            </td>
            
        </tr>
    </table>
</div>  </form>
    <center>
    <button id="about">支付订单</button>
    </center>

    <script>
        ; !function () {
            layer.ready(function () {
            });
            //关于
            $('#about').on('click', function () {
                layer.open({
                    type: 1,
                    skin: 'layui-layer-rim', //加上边框
                    area: ['400px', '700px'], //宽高
                    content: '<h1 style="text-align: center; color:black;">确认支付</h1><div style="text-align: center;margin-top: 0px;"><img src="images/IMG_0889.JPG"></div></br></br><center><button onclick="window.location.reload();"  style="text-align: center;">(调用支付接口，支付完成后返回确认本条订单信息)</button></center>',
                    scrollbar: false,
                });
            });

        }();
</script>
</body></html>

