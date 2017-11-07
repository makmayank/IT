
<%@page import ="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
               try
               { 
                    String msg="you won";
                    String nm=(String)request.getParameter("str");
                    String lang = request.getParameter("even-odd");
                    int len=nm.length();
                    int i ,f=1;
                    if("even".equals(lang))
                    {
                        i=0;
                    }
                    else
                    {
                        i=1;
                    }
                    char ch;
                    while(i<len)
                    {
                        ch=nm.charAt(i);
                        if(ch=='a' || ch=='A' || ch=='e' || ch=='E' ||
                               ch=='i' || ch=='I' || ch=='o' || ch=='O' ||
                             ch=='u' || ch=='U')
                             {

                             }
                        else
                        {

                            msg="you F loser";
                            break;
                        } 
                        i=i+2;
                    }
                    out.println(msg);

                }
                catch(Exception e){out.println(" reeon occurun");}
            %>
       
    </body>
</html>