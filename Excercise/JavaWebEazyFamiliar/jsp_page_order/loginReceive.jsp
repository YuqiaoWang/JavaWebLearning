    <%@ page contentType="text/html; charset=utf-8"%>
        <html>
        <head>
        <title>登陆跳转页</title>
        </head>
        <body>
            <%
            String Name=request.getParameter("userName");
            String Pwd=request.getParameter("passWord");
            if(Name.equals("java") && Pwd.equals("123456")) {
            %>
            <jsp:forward page="loginCorrect.html"/>
            <%
            }else {
            %>
            <jsp:forward page="loginError.html"/>
            <%
            }
            %>
        </body>
        </html>