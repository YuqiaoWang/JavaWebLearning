<%@ page language="java" contentType="text/html;charset=GB18030" pageEncoding="utf-8" %>
    <%
        String id=request.getParameter("id");
        String user=request.getParameter("user");
        String pwd=request.getParameter("pwd");
        %>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
            <title>处理页</title>
        </head>
        <body>
            id参数值为：<%=id%><br>
            user参数值为：<%=user%><br>
            pwd参数值为：<%=pwd%>
        </body>
    </html>