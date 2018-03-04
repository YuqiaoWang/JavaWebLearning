<%@ page contentType="text/html;charset=utf-8"%>
<! DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="context-type" content="text/html;charset=utf-8">
    <title>注册页面</title>
    <script type="text/javascript" src="JS/ajax.js"></script>
    <script type="text/javascript">

    </script>
</head>
<body>
    <form name="form1" method="POST" action="">
        <table style="font-size:12px;">
            <tr>
                <td width="80">用户名：</td>
                <td><input type="text" name="username" onblur="doCheck()"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <span id="feedback_info" style="color:#FF0000"></span>
                </td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="pwd"></td>
            </tr>
        </table>
    </form>
</body>
</html>