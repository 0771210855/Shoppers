

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%@page import="java.sql.*"%>   
        
        <%
       String username=request.getParameter("userName");
       String pwd =request.getParameter("Password");
   
   try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quickyshoppers","root","");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from customers where username='"+username+"' and password = '"+pwd+"'");
        
        
        //ResultSet usercheck = st.executeQuery("select * from user where username='"+username+"'");
        if(rs.next()){
            out.println("<script type=\"text/javascript\">");
            out.println("window.alert('Welcome back "+username+"');");
            out.println("location='index_1.jsp';");
            out.println("</script>");
            }
        
            else{
            out.println("<script type=\"text/javascript\">");
            out.println("window.alert('You entered wrong details, try again!');");
            out.println("location='customerlogin.jsp';");
            out.println("</script>");
            
            }
        
            } catch(Exception e){
            
              out.println(e);
            }
            
            
           /* String username=request.getParameter("userName");
            out.print("Welcome "+userName);

            session.setAttribute("user",userName);
            */
 

        %>
        
