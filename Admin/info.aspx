<%@ Page Language="C#" AutoEventWireup="true" CodeFile="info.aspx.cs" Inherits="User_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <base target=_self></base>
    <style type="text/css">
        h1 {
            color:white;
        }
        div{
            color:white;
        }
    </style>
</head>
<body style="background:url(../img/mainbg.jpg) fixed center center no-repeat ;background-size: cover; width: 100%; overflow-x:hidden">
    <form id="form1" runat="server">
    <div>
        <tr>
           <td style="width: 98px; height: 23px" align="left"><div align="left" >
              经销商单位名称：</div></td>
           <td align="left" style="width: 280px; height: 23px">
           <asp:DropDownList ID="danwei" runat="server" Width="200px" autopostback="true"><%--autopostback="true"--%>
           </asp:DropDownList></td>
                <asp:Button  ID="Button1" runat="server" CausesValidation="False" CssClass="formbutton" Height="22px" OnClick="Button1_Click" Text="浏览图片" Width="102px" autopostback="true" />
                
        </tr>
                <div><asp:Image ID="Image5" runat="server" ImageUrl="..\Images\Survey1.gif" width="100%" height="5px" background-repeat="repeat-x"></asp:Image></div>

         <div>
          <div align="center"><h1>经销商销售许可</h1></div>
        </div>
        <div align="center"><asp:Image ID="Image1" runat="server" ImageUrl="" width=80% ></asp:Image></div>
        <div><asp:Image ID="bar1" runat="server" ImageUrl="..\Images\Survey1.gif" width="100%" height="5px" background-repeat="repeat-x"></asp:Image></div>


        <div>
          <div align="center"><h1>营业执照</h1></div>
        </div>

        <div align="center"><asp:Image ID="Image2" runat="server" ImageUrl="" width=80%  ></asp:Image></div>
        <div><asp:Image ID="Image6" runat="server" ImageUrl="..\Images\Survey1.gif" width="100%" height="5px" background-repeat="repeat-x"></asp:Image></div>


         <div>
          <div align="center"><h1>组织机构代码证书</h1></div>
        </div>
        
        <div align="center"><asp:Image ID="Image3" runat="server" ImageUrl="" width=80%  ></asp:Image></div>
        <div><asp:Image ID="Image7" runat="server" ImageUrl="..\Images\Survey1.gif" width="100%" height="5px" background-repeat="repeat-x"></asp:Image></div>


        <div>
          <div align="center"><h1>公司开票资料</h1></div>
        </div>
       
        <div align="center"><asp:Image ID="Image4" runat="server" ImageUrl="" width=80%  ></asp:Image></div>
 
                <div><asp:Image ID="Image8" runat="server" ImageUrl="..\Images\Survey1.gif" width="100%" height="5px" background-repeat="repeat-x"></asp:Image></div>
       
        </div>
        <div>
            <div><asp:Label ID="demo" runat="server" visible="false" >
              <div align="center">11111</div>
            </asp:Label>
            </div>
            <div><asp:Label ID="demo2" runat="server" visible="false">
              <div align="center">11111</div>
            </asp:Label>
            </div>
            <div><asp:Label ID="demo3" runat="server" visible="false" >
              <div align="center">11111</div>
            </asp:Label>
            </div>
            <div><asp:Label ID="demo4" runat="server" visible="false">
              <div align="center">11111</div>
            </asp:Label>
            </div>
      </div>


    </form>
</body>
</html>
