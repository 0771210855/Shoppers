<%-- 
    Document   : login
    Created on : Aug 3, 2022, 9:04:39 PM
    Author     : ADMIN
--%>
       
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
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
        <img src="./image/Online-Shopping.jpg" alt=""/>
    <center><h1><u>Login Here</u></h1></center>
    <center>
        <div>
            <form method="POST" action="index.jsp" class="form">
            <table>
                <tr>
                    <td>UserName:</td>
                    <td> <input type="text" name="username"></td>
                    
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="text" name="password" ></td>
                </tr><br>
                <tr>
                    <td colspan="2" style="text-align: right;"><input type="submit" value="Login"</td>
                </tr>
            </table>
            </form>
        </div>
    </center>
    </body>
</html>
 



 
 