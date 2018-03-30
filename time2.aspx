<%@ Page Language="C#" AutoEventWireup="true" CodeFile="time2.aspx.cs" Inherits="time2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>




    <style type="text/css" >
            .hoverclock {
                position: relative;
                height: 410px;
                width: 410px;
                margin: 0px;
                border: 1px solid transparent;
                border-radius: 50%;
                display: none;
                color:white;
                       }

           .secondhovertree {
                height: 200px;
                width: 2px;
                position: absolute;
                border: 0px solid black;
                background-color: red;
                transform-origin: 50% 100%;
                border-radius: 1px;
                z-index: 1015;
                color:white;
                           }

          .secondhovertree2 {
                height: 200px;
                width: 2px;
                position: absolute;
                border: 0px solid black;
                background-color: red;
                transform-origin: 50% 100%;
                border-radius: 1px;
                z-index: 1015;
                color:white;
                           }

          .smallhovertree {
                width: 8px;
                height: 8px;
                
                position: absolute;
                border-radius: 50%;
                z-index: 2016;
                color:white;
                           }

          .bighovertree {
                width: 16px;
                height: 16px;
                background-color: skyblue;
                position: absolute;
                border-radius: 50%;
                z-index: 2008;
                color:white;
                        }

          .minutehovertree {
                width: 6px;
                height: 170px;
                background-color: gray ! important;
                position: absolute;
                z-index: 1010;
                transform-origin: 50% 100%;
                color:white ;
                          }

          .hourhovertree {
                width: 11px;
                height: 100px;
                
                position: absolute;
                z-index: 1005;
                transform-origin: 50% 100%;
                color:white;
                         }

          .scalehovertree {
                background-color: gray;
                position: absolute;
                text-align: center;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                color:white;
                          }
        </style>




</head>
<body>
    <form id="form1" runat="server">
    <div>
    <%--<link rel="stylesheet" href="http://hovertree.com/texiao/hoverclock/jquery.hoverclock.2.1.0.css" />--%>
        
    <script src="http://hovertree.com/ziyuan/jquery/jquery-2.1.4.min.js"></script>
    <%--<script src="http://hovertree.com/texiao/hoverclock/jquery.hoverclock.2.1.0.js"></script>--%>
        <script src="JavaScript/jquery.hoverclock.2.1.0.js"></script>
        <div align="center" style="width:230px">
          <p style="font-weight:bold; color:white;">当前系统时间</p>            
        </div>
     <div id="hoverclock"></div>
       <script>
        $("#hoverclock").hoverclock({
        "h_width": 230,
        "h_height": 230,
        //"h_hourNumSize": "80",
        // "h_hourNumRadii": "200",
        // "h_hourNumShow": false,
        // "h_minuteNumShow":false,
        "h_hourNumColor": "white",
        "h_backColor": "write",
        // "h_borderColor": "gold",
        "h_frontColor": "white",
        //"h_linkText": "向达环境"
       });
    </script>
    </div>
    </form>
</body>
</html>
