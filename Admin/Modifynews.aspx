<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="Modifynews.aspx.cs"   EnableEventValidation="false" ValidateRequest="false"   Inherits="Admin_Modifynews" Title="Untitled Page" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>AnyForWeb订单进销存处理系统</title>  <link  rel="stylesheet" href="../CSS/style.css"/>
       <link rel="stylesheet" href="../kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="../kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="../kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="../kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="../kindeditor/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('#content1', {
				cssPath : '../kindeditor/plugins/code/prettify.css',
				uploadJson : 'upload_json.ashx',
				fileManagerJson : 'file_manager_json.ashx',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="0" cellpadding="0" cellspacing="0" class="ShopInfo" width="100%">
        <tr>
            <td align="center" bgcolor="#ffffff" style="height: 30px">
                &nbsp;
                <table id="Table1" border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr>
                        <td style="width: 90px; height: 24px">
                            公告标题：*</td>
                        <td align="left" style="width: 801px; height: 24px">
                            <asp:TextBox ID="txtName" runat="server" MaxLength="200" Width="467px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 23px">
                            内容：</td>
                        <td align="left" style="width: 801px; height: 23px">
                            <textarea id="content1" runat="server" cols="100" rows="8" style="visibility: hidden;
                       width: 100%; height: 200px"></textarea>
                        </td>
                    </tr>
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

