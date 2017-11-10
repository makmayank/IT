package com;
import java.io.IOException;  
import java.io.PrintWriter;  
import javax.servlet.RequestDispatcher;  // An Interface Defines an object that receives requests from the client and sends them to any resource (such as a servlet, HTML file, or JSP file) on the server.
import javax.servlet.ServletException;   // Exception Defines a general exception a servlet can throw when it encounters difficulty.
import javax.servlet.http.HttpServlet;   // Class Provides an abstract class to be subclassed to create an HTTP servlet suitable for a Web site.
import javax.servlet.http.HttpServletRequest;   //  Extends the ServletRequest interface to provide request information for HTTP servlets.
import javax.servlet.http.HttpServletResponse;  //  Extends the ServletResponse interface to provide HTTP-specific functionality in sending a response.

public class ControllerServlet extends HttpServlet 
{
    @Override  
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)  
            throws ServletException, IOException {  
        doPost(req, resp);  
    }  
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        LoginBean bean=new LoginBean();  
        bean.setName(name);  
        bean.setPassword(password);  
        request.setAttribute("bean",bean);  
          
        boolean status=bean.validate();  
          
        if(status){  
            RequestDispatcher rd=request.getRequestDispatcher("login-success.jsp");  
            rd.forward(request, response);  
        }  
        else{  
            RequestDispatcher rd=request.getRequestDispatcher("login-error.jsp");  
            rd.forward(request, response);  
        }  
    }
}
