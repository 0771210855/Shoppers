<%-- 
    Document   : trackingCustomer
    Created on : Aug 10, 2022, 4:50:58 PM
    Author     : Atweta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@page import="java.sql.*"%>
        <title>Customers</title>
    </head>
    <body>
        <h1>These are the customers</h1>
        <%
           try{
           String username=request.getParameter("username");
            
            
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM details ");
        rs.next();
        out.print(rs.getInt("count(*)"));
        
            }catch(Exception e){
            out.println(e);
            }
        %>
        
    </body>
</html>
