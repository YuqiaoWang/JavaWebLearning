    <%@ page import="java.util.*" pageEncoding="utf-8" %>
            <%
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerName()+
            ":"+request.getServerPort()+path+"/";
        %>
        <html>

        <head>
        <base href="<%=basePath%>">
        <title>My JSP starting page</title>
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="This is my page">
        <!--<link rel="stylesheet" type="text/css" href="styles.css">-->
        <style type="text/css">
        h2{
        font-family:黑体;
        font-seize:18px;
        border-bottom:2px dotted green;
        padding-top:20px;
        }
        .pt{
        margin:10px;
        border:2px groove red;
        padding:20px;
        }
        .b{
        margin-left:25px;
        border:2px dotted green;
        }
        </style>

        </head>
        <body background="images/background.jpg">
        <h2>动态网页练习实例</h2>
        <h3>When you are old<br></h3>
        <p class=pt>
        <img class=b align="right" src="images/food.jpg"><br>
        When you are old and grey and full of sleep,<br>
        And nodding by the fire，take down this book,<br>
        And slowly read,and dream of the soft look<br>
        </body>
        </html>