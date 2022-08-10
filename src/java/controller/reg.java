package controller;



import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
//import static jdk.javadoc.internal.doclets.formats.html.markup.HtmlStyle.index;

public class reg extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
          
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
               
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out = response.getWriter();
           //String id="1";   
         String userName = request.getParameter("userName");
         String gender = request.getParameter("gender");
         String preference = request.getParameter("preference");
         String location = request.getParameter("location");
         String email = request.getParameter("email");
         String Password = request.getParameter("password");
         
         try{
             Connection con;   
             Class.forName("com.mysql.jdbc.Driver");
               con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quickyshoppers","root","");
               out.println("Connected");
               
               String sql = "insert into customers(userName,gender,preference,location,email,Password)values('"+userName+"','"+gender+"','"+preference+"','"+location+"','"+
                       email+"',"+Password+");";
              Statement statement=con.createStatement();
              statement.executeUpdate(sql);
              out.println(sql);
               
              // RequestDispatcher rd;
           RequestDispatcher rd = request.getRequestDispatcher("./Shop/Dashboard/login.jsp");
             rd.forward(request, response);
           }
           
          catch(Exception e){
     out.println("ERROR::" +e.getMessage());}
 
    
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
