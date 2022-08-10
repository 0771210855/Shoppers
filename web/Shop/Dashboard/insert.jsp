

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%@page import="java.sql.*"%>   
        
        <%
        String username=request.getParameter("username");
        String pwd =request.getParameter("password");
        

   try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quickyshoppers","root","");
        Statement st = con.createStatement();
        //ResultSet rs = st.executeQuery("select * from user where username='"+username+"' and password = '"+pwd+"'");
        
        
        ResultSet usercheck = st.executeQuery("select * from customer where userName='"+userName+"'");
        if(usercheck.next()){
            out.println("<script type=\"text/javascript\">");
            out.println("window.alert('Sorry, this username is already taken');");
            out.println("location='register.jsp';");
            out.println("</script>");
            }
        
            else{
             st.executeUpdate("insert into customers(userName,gender,preference,location,email,Password)values('"+userName+"','"+gender+"','"+preference+"','"+location+"','"+
                       email+"',"+Password+")");
            out.println("<script type=\"text/javascript\">");
            out.println("window.alert('you have been registered successfully!');");
            out.println("location='customerlogin.jsp';");
            out.println("</script>");
            
            }
        
   
   
            } catch(Exception e){
            
              out.println(e);
            }
 
        %>
        
