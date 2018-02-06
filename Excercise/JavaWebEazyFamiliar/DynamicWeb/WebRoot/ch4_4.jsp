    <%@ page import="java.util.*" pageEncoding="utf-8" %>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>ch4_2.html</title>
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="this is my page">
        <meta http-equiv="content-type" content="text/html;charset=utf-8">
        <link rel="stylesheet" type="text/css" href="./styles.css">
        </head>
        <body>
        <div id="loginDiv">
        <table id="ta">
        <tr style="height:50">
        <td id="t" colspan="2" align="center" onmousedown="changeTrue()"
        onmouseup="changeFalse()" onmouseover="titleChange()" onmouseout="titleStatic()">
        欢迎光临
        </td>
        </tr>
        <tr>
        <td align="right">用户名：</td>
        <td align="left"><input type="text" value="" id="userId"></td>
        </tr>
        <tr>
        <td align="right">密  码：</td>
        <td align="left"><input type="text" value="" id="userPass" value=""></td>
        </tr>
        <tr>
        <td align="right">
        <input type="button" id="login" value="登录" onclick="loginOk()" style="font-size:larger">
        </td>
        <td align="left">
        <input type="button" id="cancel" value="取消" onclick="loginCancel()" style="font-size:larger">
        </td>
        </tr>
        </table>
        </div>
        </body>
        </html>

        <script language="JavaScript" type="text/javascript">
        function loginOk() {
        var userName=document.getElementById("userId").value.toString();
        var userPassword=document.getElementById("userPass").value.toString();
        if(userName == ""){
        alert("请输入用户名！");
        return;
        }
        if(userPassword == "") {
        alert("请输入密码！");
        return;
        }
        if(userName != "admin") {
        alert("用户名错误!");
        return;
        }
        if(userPassword == "123456") {
        alert("登陆成功！");
        return;
        }
        alert("密码错误！");
        }

        function loginCancel() {
        document.getElementById("userId").value="";
        document.getElementById("userPass").value="";
        }
        function titleChange() {
        document.getElementById("t").className="cTitle";
        }
        function titleStatic() {
        document.getElementById("t").className="sTitle";
        }

        </script>