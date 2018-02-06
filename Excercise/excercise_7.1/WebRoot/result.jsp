    <%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
        <html>
        <head>
        <meta http-equiv="content-type" content="text/html;charset=utf-8">
        <title>邮箱认证结果页面</title>
        </head>
        <body>
        <div align="center">
            <%
                String mailAddr = request.getParameter("mailAddr");
                Email email = new Email(mailAddr);
                if(email.isEmail()) {
                    out.print(mailAddr + "<br>是一个标准邮箱地址!<br>");
                }else {
                    out.print(mailAddr + "<br>不是一个标准邮箱地址!<br>");
                }
            %>
        <a href="index.jsp">返回</a>
        </div>
        </body>
        </html>