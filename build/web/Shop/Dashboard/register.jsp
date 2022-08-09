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
            <form action="login.jsp" method="post" class="form">
                <label>Full Name:</label><br/>
                <input type="text" placeholder="Enter Full Name" name="Fname"><br>
                
                 <label>User Name:</label><br/>
                <input type="text" placeholder="Enter User Name" name="Uname"><br>
                
                 <label>Email:</label><br/>
                <input type="text" placeholder="Enter email" name="email"><br>
                
                 <label>Password:</label><br/>
                <input type="text" placeholder="Enter password" name="psw"><br>
                
                 <label>Confirm Password:</label><br/>
                <input type="text" placeholder="Re-enter password" name="cnfpsw"><br>
                
                <br><input type="submit" value="REGISTER"><br/>
            </form>
        </div>
    </body>
</html>
