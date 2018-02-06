<%@ page contentType="text/html;charset=utf-8"
            import="bupt.bean.User" pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/CheckServlet" method="post">
    <table border="1" align="center">
        <tr>
            <td>username:</td>
            <td><input type="text" size="10" name="username"/></td>
        </tr>
        <tr>
            <td>password:</td>
            <td><input type="text" size="10" name="password"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="login"/>
            <input type="reset" value="reset"></td>
        </tr>
    </table>
</form>
</body>
</html>