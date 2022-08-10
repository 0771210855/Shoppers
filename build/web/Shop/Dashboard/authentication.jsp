<%@page import="java.sql.*" %>

        
        <%
            
            String username = request.getParameter("userName");
            String password = request.getParameter("password");
            
            ResultSet rs = st.executeQuery("SELECT password FROM customers WHERE userName = '"+username+"'");
            
            
            
            if(rs.next()){
                String storedPassword = rs.getString("password");
                session.setAttribute("username",userName);
                     session.setAttribute("Password",request.getParameter("Password"));
                      response.sendRedirect("index_1.jsp");
            }else{
            %>
        
            <%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        
        
    </head>
    <body>
       
        <h1>Welcome</h1>
        <form action="authentication.jsp" method="post">
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
                        <a href="/Shop/Dashboard/register.jsp"><input type="button" value="Register"></a>
                    </td>
                </tr>
            </table>
        </form>
        
       
        <h4 style="color:red">seems you've input wrong credentials</h4>;
    </body>
</html>

<%
            }
                     
        %>