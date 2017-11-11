
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    	<h2>
        <%@ taglib uri="WEB-INF/mtld/mytags.tld" prefix="str" %>  
            cropped string: <str:substring input="dfhuuif" end="5" start="2"/> 
    	</h2>
</html>
