<!DOCTYPE html>


<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
            <form action="ControllerServlet" method="post">  
                <p>Name: <input type="text" name="name" value="yourname"></p>
                    Password:<input type="password" name="password"><br>  
                        <br><br>
					<p>DoB: <input type="date" name="dob" value="7/10/14" required></p>
					<p>Email: <input type="email" name="email" value="m@c.in"required></p>
                                        <p>Mobile: <input type="number" name="phone" min="1000000" value="77148888" max="9999999999" required></p>
                                        <p>Lucky#: <input type="number" name="lucky" value="87"></p>
                                        <p>Favourite food: <input type="text" name="food" value="khokute"></p>
                <input type="submit" value="login">  
            </form>  
    </body>
</html>
