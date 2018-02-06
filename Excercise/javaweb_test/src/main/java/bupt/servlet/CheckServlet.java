package bupt.servlet;

import bupt.bean.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by yuqia on 2018/2/6.
 */
public class CheckServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request,
                                  HttpServletResponse response)
            throws IOException, ServletException{
        //设置文本显示方式和编码类型
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        //获取用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        out.println("<br><hr><center><font color=red size=12><B>");
        try {
            if(User.check(username, password)) {
                out.println(username);
                out.println(password);
            }else {
                out.println("登陆失败");
            }
        }catch (Exception e) {

        }
        out.println("</B></font></center>");
        out.close();
    }

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    public String getServletInfo() {
        return "Short description";
    }
}
