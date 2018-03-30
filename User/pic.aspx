<%@ Page Language="C#"   AutoEventWireup="true" CodeFile="pic.aspx.cs" Inherits="User_pic" Title="Untitled Page" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>


    <style type="text/css">
        .auto-style1 {
            height: 23px;
            width: 311px;
        }

        body
        {
	        /*font-family: "微软雅黑";*/
	        font-size: 9pt;
            color: white;
	        /*background-color: #cccccc;*/
            /*background:url(../img/mainbg.jpg) fixed center center no-repeat ;
            background-size: cover; 
            width: 100%;*/
            background:url(../img/mainbg.jpg) fixed center center no-repeat ;
            background-size: cover; 
            width: 100%;
            overflow-x:hidden;
        }


    </style>


</head>     
<body>
    <form id="form1" runat="server">
    <div>
    <table border="0" cellpadding="0" cellspacing="0" class="ShopInfo" width="100%">

                     <tr>
                        <td align="left" class="auto-style1" >
                            </td>
                        <td align="left" style="width: 280px; height: 23px">
                            <asp:DropDownList ID="danwei" runat="server" Width="200px" visible="false">
                            </asp:DropDownList></td>   

                    </tr>

                    <tr>
                        <td align="left" class="auto-style1">
                            上传公司销售许可（请拍照并上传）:</td>
                        <td align="left" style="width: 731px; height: 23px">
                            <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox>
                            <input id="file1" runat="server" class="inputBox" style="width: 300px" type="file" />
                           <%-- <asp:Button  ID="Button1" runat="server" CausesValidation="False" CssClass="formbutton" Height="22px" OnClick="Button1_Click" Text="上传文件" Width="102px" />--%>
                            <asp:Label ID="Label1" runat="server"  Visible="False" Width="100px"></asp:Label>
                            &nbsp;&nbsp;</td>
                    </tr>
        

                    <tr>
                        <td align="left" class="auto-style1">
                            上传公司营业执照（请拍照并上传）:</td>
                        <td align="left" style="width: 731px; height: 23px">
                            <asp:TextBox ID="pic2" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox>
                            <input id="file2" runat="server" class="inputBox" style="width: 300px" type="file" />                         
                            <asp:Label ID="Label2" runat="server"  Visible="False" Width="100px"></asp:Label>
                            &nbsp;&nbsp;</td>
                    </tr>
       


                    <tr>
                        <td align="left" class="auto-style1">
                            上传组织机构代码证书（请拍照并上传）:</td>
                        <td align="left" style="width: 731px; height: 23px">
                            <asp:TextBox ID="pic3" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox>
                            <input id="file3" runat="server" class="inputBox" style="width: 300px" type="file" />                         
                            <asp:Label ID="Label3" runat="server"  Visible="False" Width="100px"></asp:Label>
                            &nbsp;&nbsp;</td>
                    </tr>
        
                    <tr>
                        <td align="left" class="auto-style1">
                            上传公司开票资料（请拍照并上传）:</td>
                        <td align="left" style="width: 731px; height: 23px">
                            <asp:TextBox ID="pic4" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox>
                            <input id="file4" runat="server" class="inputBox" style="width: 300px" type="file" />                         
                            <asp:Label ID="Labe14" runat="server"  Visible="False" Width="100px"></asp:Label>
                            &nbsp;&nbsp;</td>
                    </tr>
        
               
                    
                    
        </table>
        </div>
                             <asp:Button  ID="Button1" runat="server" CausesValidation="False" CssClass="formbutton" Height="22px" OnClick="Button1_Click" Text="上传文件" Width="102px" />

        <div><asp:Label ID="demo4" runat="server" visible="false">44444</asp:Label></div>
        <div><asp:Label ID="demo" runat="server" visible="false">11111</asp:Label></div>
        <div><asp:Label ID="demo1" runat="server" visible="false">22222</asp:Label></div>
        <div><asp:Label ID="demo2" runat="server" visible="false">33333</asp:Label></div>      
        <div><asp:Label ID="demo5" runat="server" visible="false">55555</asp:Label></div>
    </form>
     
      
    
</body>
</html>
