<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adduser.aspx.cs" Inherits="adduser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>用户注册</title>
<%--        <link href="css.css" rel="stylesheet" type="text/css" />--%>
        <style type="text/css">
            body {
	        background:url(../img/loginbg.png)fixed center center no-repeat;
		    background-size: cover;
		    /*width: 100%;*/
	        margin-bottom: 0px;
	        margin-left: 97px;
	        margin-right: 97px;
            margin-top: 0px;
	        text-align: center;
            }
            /*h1{
                color:white;
                width:400px;
                text-align:center;
            }*/
            div{
                color:white;

            }
			   .auto-style1 {
             height: 32px;
             width: 20%;
         }
         .auto-style2 {
             height: 28px;
             width: 100%;
         }
         .auto-style3 {
             height: 33px;
             width: 100%;
         }
         .auto-style4 {
             width: 611px;
             height: 33px;
         }
        </style>
    </head>
    <body>
        <div align="center">
              <%--<form id="form" runat="server">--%>
                  <table width="829">
                    <tr>
                      <td height="134" valign="top" ><div align="center"></div></td>
                      </tr>
                  </table>
                  <table width="829" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="58" height="43" ></td>
                      <td width="106" height="43" ></td>
                      <td width="287" ></td>
                      <td width="327" ></td>
                      <td width="51" ></td>
                      </tr>
                  </table>
                  <table width="829" border="0" cellpadding="0" cellspacing="0">
    </div>
                <tr>
                    <td height="254" valign="top"  scope="row">
                        <div align="center">
                          <asp:Panel ID="PanelInputxuehao" runat="server" Height="10px" Width="125px">
                            </asp:Panel> 
                          <table width="829" border="0" cellpadding="0" cellspacing="0">
                          
                        </div>
                        <th height="28" scope="row">
                          <h1 align="center" style="color:white;">用户注册</h1>
                          <form id="form1" runat="server">
    <div>
       <div align="center">
         <script language="javascript" type="text/javascript" src="../JavaScript/Calendar.js"></script>
         <table border="0" cellpadding="0" cellspacing="0" class="ShopInfo" width="718">
           <tr>
             <td align="center"  style="width: 99%; height: 29px">
               <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" 
                    style="width: 100%">




                 <tr>
                        <td align="left" colspan="4"  class="auto-style1">
                            所属单位：</td>
                        <td width="611" colspan="1" align="left" style="width: 90%; height: 32px; ">
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Width="300px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4"  class="auto-style2">
                            会员账号：</td>
                        <td align="left" colspan="1" style="width: 611px; height: 28px; ">
                            <asp:TextBox ID="txtxuehao" runat="server" Width="296px"></asp:TextBox></td>
                    </tr>
                   <tr>
                        <td align="left" colspan="4"  class="auto-style2">
                            设置密码：</td>
                        <td align="left" colspan="1" style="width: 611px; height: 28px; ">
                            <asp:TextBox ID="pass" runat="server" Width="296px" TextMode="Password"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td align="left" colspan="4"  class="auto-style2">
                            确认密码：</td>
                        <td align="left" colspan="1" style="width: 611px; height: 28px; ">
                            <asp:TextBox ID="passc" runat="server" Width="296px" TextMode="Password"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4"  class="auto-style3">
                            姓名：</td>
                        <td align="left" colspan="1" style="width: 611px; height: 28px; ">
                            <asp:TextBox ID="txtUser" runat="server" Width="296px"></asp:TextBox></td>
                    </tr>
                    <%--<tr>
                        <td align="left" colspan="4"  class="auto-style3">
                            单位代码：
                        </td>
                        <td align="left" colspan="1" style="width: 611px; height: 33px; ">
                            <asp:TextBox ID="txtnianling" runat="server" Width="192px"></asp:TextBox></td>
                    </tr>--%>
                    <tr>
                        <td align="left" colspan="4"  class="auto-style3">
                            性别： &nbsp;</td>
                        <td align="left" colspan="1" style="width: 611px; height: 33px; ">
                            <asp:DropDownList ID="drsex" runat="server" Width="44px">
                                <asp:ListItem Selected="True">男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                   <%-- <tr>
                        <td align="left" colspan="4"  class="auto-style3">
                            会员类型</td>
                        <td align="left" colspan="1"  class="auto-style4">
                            <asp:TextBox ID="txtjg" runat="server" Width="192px"></asp:TextBox></td>
                    </tr>--%>
                    <tr>
                        <td align="left" colspan="4"  class="auto-style3">
                            联系方式：</td>
                        <td align="left" colspan="1" style="width: 611px; height: 33px; ">
                            <asp:TextBox ID="txttel" runat="server" Width="296px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4"  class="auto-style3">
                            电子邮件：</td>
                        <td align="left" colspan="1" style="width: 611px; height: 33px; ">
                            <asp:TextBox ID="txtEmal" runat="server" Width="296px"></asp:TextBox></td>
                    </tr>
                    <tr>






                 <tr>
                   <td align ="left" colspan="4"  class ="auto-style3 ">
                       设置问题：</td>
                     <td align ="left" colspan ="1" style ="width :611px; height:33px; ">
                         <asp:TextBox ID="txtQuestion" runat="server" Width="500px"></asp:TextBox></td>
                 </tr>
                 <tr>
                     <td align="left" colspan="4" style="" class="auto-style3">
                       设置答案：</td>
                    <td align="left" colspan="1" style="width:611px; height:33px; ">
                        <asp:TextBox ID="txtAnswer" runat="server" Width="500px"></asp:TextBox></td>
                 </tr>  
   


                 <tr>            
                   <td align="center" colspan="5" style="height: 25px; "> 
                     <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>&nbsp;
                     <asp:ImageButton ID="ImageButtonSave" runat="server" ImageUrl="../Images/BtnSave.gif"
                                OnClick="ImageButtonSave_Click" />
                     <asp:ImageButton ID="ImageButtonSave2" runat="server" ImageUrl="../Images/BtnBack.gif"
                                postbackurl="../Login.aspx" />
                     </td>
                   </tr>
                 </table>
               &nbsp;</td>
             </tr>
         </table>
       </div>
    </div>
</form>
          <div>
            <div align="center">
              <table width="829" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  
                      <div style="color:white; position:absolute;left:0px; bottom:12px;background-color:black">AnyForWeb订单进销存处理系统</div>
                      <div style="color:white; position:absolute;right:0px; bottom:10px;background-color:black">版本号： v1.0 Beta</div>
                </tr>
              </table>
            </div>
          </div>
                             
    </body>
</html>