    <%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
        <%@ page import = "java.net.URLEncoder"%>
        <html>
        <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
        <title>写入cookie</title>
        </head>
        <body>
            <%
            request.setCharacterEncoding("GB18030");
            try{
                String user=URLEncoder.encode(request.getParameter("user"), "utf-8");
                Cookie cookie = new Cookie("mrCookie", user+"#"+new java.util.Date().toLocaleString());
                cookie.setMaxAge(60*60*24*30);
                response.addCookie(cookie);
            }catch(Exception e) {
                e.printStackTrace();
            }



            %>
            <script type="text/javascript">window.location.href="index.jsp"</script>
        </body>
        </html>