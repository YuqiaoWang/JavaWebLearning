<%@ page contentType="text/html;charset=utf-8"
            import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="bupt.bean.User"%>
<%
    User u = (User)session.getAttribute("user");
    if(u == null) {
        response.sendRedirect("UserLogin.jsp");
        return;
    }
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<title>最后确认</title>
</head>
<body>
<table align="center" border="1">
    <tr>
        <td colspan=5>
            <form action="Order.jsp" method="post">
                欢迎您:<%=u.getUsername()%><br>
                phone:<%=u.getPhone()%><br>
                Addr:<%=u.getAddr()%><br>
                <input type="submit" value="确认">
            </form>
        </td>
    </tr>
</table>
</body>
</html>