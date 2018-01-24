    <%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
        <%@ page import="java.net.URLDecoder" %>
        <html>
        <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
        <title>通过cookie保存并读取用户登陆信息</title>
        </head>
        <body>
        <%
            Cookie[] cookies = request.getCookies();
            String user="";
            String date="";
            if(cookies!=null) {
                for(int i=0; i<cookies.length; i++) {
                    if(cookies[i].getName().equals("mrCookie")) {
                        user = URLDecoder.decode(cookies[i].getValue().split("#")[0]);  //获取用户名
                        date = cookies[i].getValue().split("#")[1];    //获取注册时间
                    }
                }
            }
            if("".equals(user) && "".equals(date)) {
            %>
                游客您好，欢迎您初次光临！
                <form action="deal.jsp" method="post">
                    请输入姓名:<input name="user" type="text" value="">
                    <input type="submit" value="确定">
                </form>
        <%
            }else{
            %>
                欢迎[<b><%=user%></b>]再次光临<br>
                您的注册时间是：<%=date %>
        <%
            }
        %>

        </body>
        </html>