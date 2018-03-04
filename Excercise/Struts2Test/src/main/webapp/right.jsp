<%@ page import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>用户登陆</title>
</head>
<body>
<br />
<s:form action="/right.action">
    <s:textfield name="username" label="操作数1" />
    <s:textfield name="password" label="操作数2" />
    <s:submit value="right" />
</s:form>
</body>
</html>