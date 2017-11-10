
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    	<h2>
        <%@ taglib uri="WEB-INF/mtld/mytags.tld" prefix="mytime" %>  
            Current Date and Time: <mytime:time-now/> 
    	</h2>
</html>
