<%-- 
    Document   : customerlogin
    Created on : Aug 10, 2022, 1:25:29 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CustomerLogin Page</title>
        <style>
            body{
                background-color: #ffe3e2;
                text-decoration: none;
                background-image:100%;
            } 
            td{
                padding: 10px;
            }
            div{
                width: 50%;
                border: 1px solid black;
                border-radius: 5px;
                background-color: gray; 
            }
            .form{
                position: relative;
                width: 100%;
                padding:80px 40px 40px;
                border-radius:10px;
            }
        </style>
    </head>
    <body>
        
        <h1>Welcome</h1>
        <form action="loginbackend.jsp" method="post">
            <table>
                <tr>
                    <td>
                        username:
                    </td>
                    <td>
                        <input type="text" name="username"/>
                    </td>
                </tr>
                <tr>
                     <td>
                        Password:
                    </td>
                    <td>
                        <input type="password" name="password"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="login" value="Login"/> 
                    </td>
                    <td>
                        <a href="./Shop/Dashboard/register.jsp"><input type="button" value="Register"></a>
                    </td>
                </tr>
            </table>
        </form>
        
       
        <h4 style="color:red">Click on the register button if you do not have an account</h4>;
        
    </body>
</html>
