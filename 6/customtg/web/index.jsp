
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    	<h2>
        <%@ taglib uri="WEB-INF/mtld/mytags.tld" prefix="m" %>  
            hello<m:hello name="mak"/> 
            <br>
            flavours available<m:choco texture="chewy"/> 
            <br>
            <m:choco texture="crunchy"/> 
            
    	</h2>
</html>
