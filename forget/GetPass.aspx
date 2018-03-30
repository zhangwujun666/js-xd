<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetPass.aspx.cs" Inherits="GetPass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>找回密码</title>
        <link href="CSS.css" rel="stylesheet" type="text/css" />
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
            h1{
                color:white;
                width:400px;

            }
            div{
                color:white;

            }
        </style>
    </head>
    <body>
        <form id="form1" runat="server">
            <table align="center" width="829" height="0" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="134" valign="top"><div align="center"></div></td>
                </tr>
            </table>
            <table align="center" width="829" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="58" height="43" ></td>
                    <td width="106" height="43"></td>
                    <td width="287" ></td>
                    <td width="327" ><div align="center"></div></td>
                    <td width="51" ></td>
                </tr>
            </table>
            <table align="center" width="829" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <th width="57" height="59"  scope="row"></th>
                    <td width="86" ></td>
                    <td width="636" <div align="center"></div></td>
                    <td width="50"></td>
                </tr>
            </table>
            <table align="center" width="829" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="254" valign="top" scope="row">
                        <asp:Panel ID="PanelInputName" runat="server" Height="50px" Width="125px">
                            <table width="829" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <th width="290" height="23" scope="row"><div align="center"></div></th>
                                    <td height="23" colspan="5" align="center"><div align="center"></div></td>
                                    <td width="273" height="23"><div align="center"></div></td>
                                </tr>
                                <tr>
                                    <th align="center" scope="row"> <div align="center"></div></th>
                                    <td height="61" colspan="5" align="center" class="biaozhunziti">
                                        <label>
                                           <%-- <div align="center"><img src="Images/buzhou1.jpg" width="226" height="22" />--%>
                                            <h1>1.请输入要找回密码的用户名：</h1>
                                            </div>
                                        </label>
                                    </td>
                                    <td>
                                        
                                    <div align="center"></div></td>
                                </tr>
                                <tr>
                                    <th height="33" scope="row">
                                        
                                    <div align="center"></div></th>
                                    <td width="86" align="right" class="biaozhunziti">
                                    <div align="center"> 会员名： </div></td>
                                    <td colspan="4">
                                        <asp:TextBox ID="txtName" runat="server" Width="250px"></asp:TextBox>
                                    </td>
                                    <td>
                                        
                                    <div align="center"></div></td>
                                </tr>
                                <tr>
                                    <th height="12" scope="row"><div align="center"></div></th>
                                    <td height="12" class="biaozhunziti"><div align="center"></div></td>
                                    <td height="12" colspan="4"><div align="center"></div></td>
                                    <td height="12"><div align="center"></div></td>
                                </tr>
                                <tr>
                                    <td align="center" scope="row" style="height: 26px">
                                        
                                    <div align="center"></div></td>
                                    <td align="center" scope="row" style="height: 26px">
                                        
                                    <div align="center"></div></td>
                                    <td width="70" align="center" scope="row" style="height: 26px">
                                        <asp:Button ID="btnNext" runat="server" Text="下一步" onclick="btnNext_Click" />
                                    </td>
                                    <td width="12" align="center" scope="row" style="height: 26px">
                                        
                                    <div align="center"></div></td>
                                    <td width="88" align="center" scope="row" style="height: 26px">
                                        <asp:Button ID="btnNreturn" runat="server" PostBackUrl="~/Login.aspx" Text="返　回" />
                                    </td>
                                    <td width="10" align="center" scope="row" style="height: 26px">
                                        
                                    <div align="center"></div></td>
                                    <td align="center" scope="row" style="height: 26px">
                                        
                                    <div align="center"></div></td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:Panel ID="PanelGetPass" runat="server" Height="124px" Visible="False" Width="311px">
                            <table align="center" width="829" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <th width="290" height="16" scope="row"></th>
                                    <td height="16" colspan="5" align="center"></td>
                                    <td width="273" height="16"></td>
                                </tr>
                                <tr>
                                    <th align="center" scope="row">&nbsp;
                                        
                                    </th>
                                    <td align="right" class="biaozhunziti" style="width: 97px">
                                        密码提示问题：
                                    </td>
                                    <td colspan="4">
                                        <asp:TextBox ID="txtQuestion" runat="server" Width="157px" ReadOnly="True"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="height: 33px">&nbsp;
                                        
                                    </th>
                                    <td align="right" class="biaozhunziti" style="height: 33px; width: 97px;">
                                        密码提示答案：
                                    </td>
                                    <td colspan="4" style="height: 33px">
                                        <asp:TextBox ID="txtAnswer" runat="server" Width="157px"></asp:TextBox>
                                    </td>
                                    <td style="height: 33px">&nbsp;
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="height: 33px">&nbsp;
                                        
                                    </th>
                                    <td align="right" class="biaozhunziti" style="height: 33px; width: 97px;">
                                        找回的密码：
                                    </td>
                                    <td colspan="4" style="height: 33px">
                                        <asp:TextBox ID="txtPass" runat="server" Width="156px" ReadOnly="True"></asp:TextBox>
                                    </td>
                                    <td style="height: 33px">&nbsp;
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <th height="13" scope="row"></th>
                                    <td height="13" class="biaozhunziti" style="width: 97px"></td>
                                    <td height="13" colspan="4"></td>
                                    <td height="13"></td>
                                </tr>
                                <tr>
                                    <td align="center" scope="row" style="height: 24px">&nbsp;
                                        
                                    </td>
                                    <td align="center" scope="row" style="height: 24px; width: 97px;">&nbsp;
                                        
                                    </td>
                                    <td width="65" align="center" scope="row" style="height: 24px">
                                        <asp:Button ID="btnGet" runat="server" Text="查　找" onclick="btnGet_Click" />
                                    </td>
                                    <td width="12" align="center" scope="row" style="height: 24px">&nbsp;
                                        
                                    </td>
                                    <td width="88" align="center" scope="row" style="height: 24px">
                                        <asp:Button ID="btnReturn" runat="server" Text="返　回" PostBackUrl="../Login.aspx" />
                                    </td>
                                    <td width="10" align="center" scope="row" style="height: 24px">&nbsp;
                                        
                                    </td>
                                    <td align="center" scope="row" style="height: 24px">&nbsp;
                                        
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
            <div>
              <table align="center" width="829" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="51"scope="row">&nbsp;
                    
                    </td>
                  </tr>
                </table>
            </div>
            <table align="center" width="829" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td  scope="row"><div align="center"></div>
                        
                    </td>
                </tr>
            </table>
           
        </form>
        <div>
         <table align="center" width="829" border="0" cellpadding="0" cellspacing="0">
                <tr align="center">
                      <div style="color:white; position:absolute;left:0px; bottom:12px;background-color:black">AnyForWeb订单进销存处理系统</div>
                      <div style="color:white; position:absolute;right:0px; bottom:10px;background-color:black">版本号： v1.0 Beta</div>
                </tr>
            </table>
            </div>
    </body>
</html>