<%-- 
    Document   : register
    Created on : Aug 4, 2022, 5:38:28 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
     <style>
            .regcontainer{
                width:100%;
                height:150px;
                text-align: center;
            }
            body{
                background-color: #ffe3e2;
                border-radius:5px;
                font-size:20px;
            }
             .form{
                position: absolute;
                width: 100%;
                padding:80px 40px 40px;
                border-radius:10px;
            } 
        </style>
    </head>
    <body>
        <div class="regcontainer">
            <form action="../../reg" method="post">
            <table>
                <tr><td>User name:</td><td><input type="text" name="userName"/></td></tr>
                <tr><td>Gender:</td><td><input type="radio" name="gender"value="male"/>Male</td><td><input type="radio" name="gender"value="female"/>Female</td></td></tr>
                <tr><td>Preference:</td><td><input type="text" name="preference"/></td></tr>
                <tr><td>Location:</td><td><input type="text" name="location"/></td></tr>
                <tr><td>Email:</td><td><input type="text" name="email"/></td></tr>  
                <tr><td>Password:</td><td><input type="password" name="password"></td></tr>
    
                <tr><td colspan="2"><input type="submit" value="Register"/></td></tr>  

            </table>
            </form>
        </div>
    </body>
</html>
