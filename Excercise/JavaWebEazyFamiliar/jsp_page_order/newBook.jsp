    <%@ page contentType="text/html; charset=UTF-8" %>
        <html>
        <head>
        <title>jsp:include动作示例</title>
        </head>
        <body>
        <p aling="center">新书展示</p>
        <!--新建表格，居中，表格线宽1，两行两列-->
        <table border="1" align="center">
        <tr>
        <td>
        <jsp:include page="newbook1.html" flush="true">
            </td>
            <td>
            <jsp:include page="newbook2.html" flush="true">
                </td>

                </tr>
                </table>
                </body>
                </html>