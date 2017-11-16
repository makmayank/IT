
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>2</title>
    </head>
    <body>
        <%
            int n1=Integer.parseInt(request.getParameter("o1"));
            int n2=Integer.parseInt(request.getParameter("o2"));
            
            
            if(request.getParameter("optr").equals("add"))
            {
                out.println(n1+n2);
            }
            else if(request.getParameter("optr").equals("sub"))
            {
                out.println(n1-n2);
            }
            else
            if(request.getParameter("optr").equals("mul"))
            {
                out.println(n1*n2);
            }
			else
			{
				out.println("Wrong choice! boi");
			}
            %>
    </body>
</html>