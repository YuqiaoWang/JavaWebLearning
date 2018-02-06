<%@ page import="java.util.*" pageEncoding="utf-8"%>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+
        request.getServerName()+":"+request.getServerPort()+path+"/";
        %>
    <html>
    <head>
    <base href="<%=basePath%>">
    <title>My JSP 计算圆面积</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1">
    <meta http-equiv="description" content="This is my page">
    </head>
    <body>
    <form id="form1" name="form1" method="post" action="area_output.jsp">
    <input name="radius" type="text" id="radius"><br>
    <input type="submit" name="submit" value="开始计算">
    </form>
    </body>
    </html>