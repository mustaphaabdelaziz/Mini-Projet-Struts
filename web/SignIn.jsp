<%-- 
    Document   : Login
    Created on : Dec 30, 2019, 12:47:15 PM
    Author     : Mustapha Abdelaziz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css"  href="bootstrap.css">
        <link rel="stylesheet" type="text/css"  href="SignUp.css">
        <title>Login</title>
    </head>
    <body>
        <div class="container">
            <div class="header-text">
                <h1>Login</h1>
                <h3>OR</h3>
                <div>
                    <a href="SignUp.htm">Create an Account</a>
                </div>
            </div>
            <p>${NOTIFICATION}</p>	

            <div class="center-container">

                <form method="POST">				
                    <div class = "form-group our-form">
                        <input type = "text" class = "form-control"  autofocus name = "username" placeholder = "Username" required />
                    </div>			
                    <div class = "form-group our-form">
                        <input type = "password" class = "form-control" name = "password" placeholder = "Password" required />
                    </div>	
                    <div class="form-check">
                        <input type="checkbox" name="admin" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                    </div>
                    <button type = "submit" class = "btn btn-primary" id="btn-position">Login</button>
                </form> 


            </div>
        </div>

    </body>
</html>
