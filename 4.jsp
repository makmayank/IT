<%@page import="java.time.LocalDateTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nm=(String)request.getParameter("name");
            int hours = LocalDateTime.now().getHour();
            if(hours<12)
            {
                out.println("Good Morning! "+na+".");
            }
            else
            if(hours>=12&&hours<=17)
            {
                out.println("Good Afternoon! "+nm+".");
            }
            else
            {
                out.println("Good Evening! "+nm+".");
            }
            %>
    </body>
</html>