    <%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
        <%
        String name = request.getParameter("name");
        session.setAttribute("name", name);
        %>
    <div align="center">
    <form id="form1" name="form1" method="post" action="result.jsp">
    <table width="28%" border="0">
        <tr>
    <td>您的名字是：</td>
    <td><%=name%></td>
    </tr>
    <tr>
    <td>您最想去的地方是：</td>
    <td><label>
    <input type="text" name="address"/>
    </label></td>
    </tr>
    <tr>
    <td colspan="2">
    <label>
    <div align="center">
    <input type="submit" name="submit" value="提交"/>
    </div>
    </label>
    </td>
    </tr>
    </table>
    </form>
    </div>