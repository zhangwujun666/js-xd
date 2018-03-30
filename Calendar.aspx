<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            overflow-y :hidden;
            color:white;
        }

    </style>
</head>
<body style="overflow-y:hidden">
    <form id="form1" runat="server">

         <div>
            <h3 align="center" >日历</h3>
            <div align="center" style="color:white">
            <%--<asp:Calendar ID="Calendar1" runat="server"  SelectionMode="DayWeekMonth" onselectionchanged="Calendar1_SelectionChanged"  >--%>
                <asp:Calendar ID="Calendar1" runat="server"  SelectionMode="DayWeekMonth"  BorderColor="White" ForeColor="Gray">
            </asp:Calendar>
            </div>
         </div>

         <p align="center">今天是： 
            <asp:Label ID="lblday" runat="server"></asp:Label>
         </p>

         <%--<p>Your Birday is: 
            <asp:Label ID="lblbday" runat="server"></asp:Label>
         </p>--%>

      </form>

</body>
</html>
