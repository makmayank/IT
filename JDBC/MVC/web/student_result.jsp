<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.StudentBean" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        
        <%
            StudentBean bean = (StudentBean) request.getAttribute("bean");
            bean.validate_account();
        %>
        
        <table border='1'>
            <tr>
                <td>University Roll No</td>
                <td>
                    <%= bean.getRollno() %>
                </td>
            </tr>
            <tr>
                <td>Name</td>
                <td>
                    <%= bean.getName() %>
                </td>
            </tr>
            <tr>
                <td>Father's Name</td>
                <td>
                    <%= bean.getFathername() %>
                </td>
            </tr>
            
        </table>
    </body>
</html>
