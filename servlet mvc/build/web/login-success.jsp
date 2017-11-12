
<html>
        <head>
            <title>Login Success</title>
        </head>
            
        <body>
            <%@page import="com.LoginBean"%>  
            <p>You are successfully logged in!</p>  
            <%  
                LoginBean bean=(LoginBean)request.getAttribute("bean");  
                out.print("Welcome, "+bean.getName());  
            %>
            <h2>Details are as follows</h2><br><br>
            
            <h3>Name:${param.name}<br><br>
                Email:${param.email}<br><br>
            Contact:${param.phone}<br></h3>
            <form action="index.html" method="post">  
                <br><input type="submit" value="Logout">  
            </form> 
        </body>    
    </html>    