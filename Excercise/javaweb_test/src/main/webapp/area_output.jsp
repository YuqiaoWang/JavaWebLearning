    <%@ page import="java.util.*" pageEncoding="utf-8" %>
            <%
            String path = request.getContextPath();
            String basePath = request.getScheme()+"://"+
        request.getServerName()+":"+request.getServerPort()+path+"/";
            %>
        <html>
        <head>
        <title>My JSP starting page</title>
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta http-equiv="keywords" content="keyword1">
        <meta http-equiv="description" content="This is my page">
        </head>
        <body>
        <jsp:useBean id="circleBean" scope="session" class="bupt.bean.CircleBean"/>
                <%
                int radius=Integer.parseInt(request.getParameter("radius"));
                circleBean.setRadius(radius);
                out.println("圆的半径是:" + circleBean.getRadius());
                out.println("圆的周长是:" + circleBean.circleLength());
                out.println("圆的面积是:" + circleBean.circleArea());
                %>
            </body>
            </html>