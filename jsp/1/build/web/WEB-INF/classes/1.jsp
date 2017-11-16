

<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int n= Integer.parseInt(request.getParameter("num"));
        for (int i=0;i<n;i++)
        {
            out.println("<br>");
            for(int j=1;j<=i;j++)
            {
                out.println(j);
            }
        }
        
        %>
		<strong>using for each</strong>
        <br>

	   <c:forEach var = "i" begin = "1" end = "n">
                   out.println("<br>");
                   <c:forEach var="j" begin="1" end="i">
                             <c:out value = "${i}"/><p>
                </c:forEach>
         Item <c:out value = "${j}"/><p>
      </c:forEach>
	 
    </body>
</html>














