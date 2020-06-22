package myservlet.control;


import javax.servlet.annotation.WebServlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


@WebServlet(name = "HandleExit",urlPatterns = {"/exitServlet"},loadOnStartup = 1)
public class HandleExit extends HttpServlet {
    public void init(ServletConfig config) throws ServletException{
        super.init(config);
    }
    public  void  doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException {
        HttpSession session=request.getSession(true);
        session.invalidate();              //销毁用户的session对象
        response.sendRedirect("index.jsp"); //返回主页
    }
    public  void  doGet(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException {
        doPost(request,response);
    }
}
