
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>2</title>
    </head>
    <body>
        <%
            string name=new string(request.getParameter("name"));
            string dt=new string (request.getParameter("dob"));
			string email=new string(request.getParameter("email"));
            string fvfood=new string (request.getParameter("food"));
			int phone= integer.parseInt(request.getParameter("phone");
			int fvn= integer.parseInt(request.getParameter("lucky"));
			
			
            
            
            if(name=="")
            {
                out.println("Be Skeptical!");
            }
            else
            {
                out.println("Name:"+name+"<br>");
            }
            if(dt=="")
            {
                out.println("Be Skeptical!");
            }
            else
            {
                out.println("DOB:"+dt+"<br>");
            }
			         if(email=="")
            {
                out.println("Be Skeptical!");
            }
            else
            {
                out.println("Email:"+email+"<br>");
            }
			    
			if(fvfood=="")
            {
                out.println("Be Skeptical!");
            }
            else
            {
                out.println("Food:"+fvfood+"<br>");
            }
		     if(phone==0)
            {
                out.println("Be Skeptical!");
            }
            else
            {
                out.println("Mobile:"+phone+"<br>");
            }
			if(fvn==0)
            {
                out.println("Be Skeptical!");
            }
            else
            {
                out.println("Fav #:"+fvn+"<br>");
            }
			
			
			
			
			
            %>
    </body>
</html>