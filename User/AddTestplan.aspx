<%@ Page Language="C#"   AutoEventWireup="true" CodeFile="AddTestplan.aspx.cs" Inherits="Admin_AddTestplan" Title="Untitled Page" %>
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
            <td align="center" bgcolor="#ffffff" style="height: 30px; width: 1330px;">
                &nbsp;
                <table id="Table1" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td style="width: 98px; height: 23px" align="left">
                            商品品类：</td>
                        <td align="left" style="width: 280px; height: 23px">
                            <asp:DropDownList ID="leibie" runat="server" Width="200px" autopostback="true">
                            </asp:DropDownList></td>
                        <%--<asp:Label ID="code" runat="server">11111111</asp:Label>--%>
                    </tr>
                     <tr>
                        <td style="width: 98px; height: 24px" align="left">
                            商品名称：</td>
                        <td align="left" style="width: 196px; height: 24px">
                            <asp:TextBox ID="TextBox3" runat="server" MaxLength="200" 
                                Width="196px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 98px; height: 23px" align="left">
                            商品代码：</td>
                        <td align="left" style="width: 280px; height: 23px">
                            <asp:DropDownList ID="baweima" runat="server" Width="200px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 98px; height: 24px" align="left">
                            订单商品数量：</td>
                        <td align="left" style="width: 280px; height: 24px">
                            <asp:TextBox ID="TextBox1" runat="server" MaxLength="200" 
                                Width="196px"></asp:TextBox></td>
                    </tr>
                    <%--<tr>
                        <td style="width: 98px; height: 23px" align="left">
                            所属单位：</td>
                        <td align="left" style="width: 280px; height: 23px">
                            <asp:DropDownList ID="danwei" runat="server" Width="200px">
                            </asp:DropDownList></td>
                    </tr>--%>
                    <tr>
                        <td align="left" style="width: 98px; height: 24px">
                            订单提交时间：</td>
                        <td align="left" style="width: 280px; height: 24px">
                            <asp:TextBox ID="TextBox2" runat="server" onclick="fPopCalendar(event,this,this)" onfocus="this.select()" ></asp:TextBox></td>
                    </tr>
                    <%--<tr>
                        <td align="left" style="width: 98px; height: 24px">
                            选择产品：</td>
                        <td align="left" style="width: 731px; height: 24px"><asp:DropDownList ID="baweima" runat="server" Width="315px">
                        </asp:DropDownList></td>
                    </tr>--%>
                    <%--照片上传--%>
                 <%--   <tr>
                        <td style="width: 98px; height: 23px" align="left">
                            上传公司环评（请拍照并上传）;</td>
                        <td align="left" style="width: 731px; height: 23px">
                            <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox>
                            <input id="file1" runat="server" class="inputBox" style="width: 141px" type="file" /><asp:Button
                                    ID="Button1" runat="server" CausesValidation="False" CssClass="formbutton" Height="22px"
                                    OnClick="Button1_Click" Text="上传文件" Width="102px" /><asp:Label ID="Label1" runat="server"
                                        Visible="False" Width="60px"></asp:Label>
                            &nbsp;</td>
                    </tr>--%>
                    <%--------------%>

                    <tr>
                        <td style="width: 98px; height: 23px" align="left">
                            备注：</td>
                        <td align="left" style="width: 731px; height: 23px">
                            <asp:TextBox ID="TextBox5" runat="server" Height="114px" MaxLength="200" TextMode="MultiLine"
                                Width="100%"></asp:TextBox></td>
                    </tr>





                    <%--上传环境评估证书链接--%>


                  <%--  <tr>
                        <td style="width: 98px; height: 23px" align="left">
                            上传公司环评（请拍照并上传）;</td>
                        <td align="left" style="width: 731px; height: 23px">
                            <asp:TextBox ID="picname" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox>
                            <input id="file2" runat="server" class="inputBox" style="width: 141px" type="file" /><asp:Button
                                    ID="Button2" runat="server" CausesValidation="False" CssClass="formbutton" Height="22px"
                                    OnClick="upload" Text="上传文件" Width="102px" /><asp:Label ID="Label2" runat="server"
                                        Visible="False" Width="60px"></asp:Label>
                            &nbsp;</td>
                    </tr>--%>



                   <%-----------------------%>



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

