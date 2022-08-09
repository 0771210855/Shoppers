

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="DAO.DBconnection" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "market";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./Shop/assets/css/frontStyle.css">
        
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">

    </head>
    
    <body>
         <div class="container">
             <nav>
                 <div class="nav-bar">
                     <div class="logo">
                         <img src="src" width="80" height="90" alt="alt"/>
                     </div>
                     <div class="menu" >
                         <a href="#">HOME</a>
                     <a href="#">PRODUCTS</a>
                     <a href="#">CONTACTS</a>
                     </div>
                    <div class="icons">
                        <a href="register.jsp">
                            <i class="far fa-heart" aria-hidden="true" aria-hidden="true"><div class="cart-no"><span>4</span></div></i>
                        </a>
                        <a href="register.jsp">
                            <i class="fa fa-cart-arrow-down" aria-hidden="true"><div class="cart-no">0</div></i>
                        </a>
                    </div>
                   
                </div>
            </nav>
         </div>
        <div class="wrapper">
            
           
            <div class="project">
                <div class="shop">
                <%
                try{
                connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                statement=connection.createStatement();
                String sql ="SELECT p.id,p.image,p.price,p.productName,p.quantity, COUNT(l.productId) as liknum FROM products p LEFT JOIN Likes l ON l.productId = p.id GROUP BY p.id";
                resultSet = statement.executeQuery(sql);
                while(resultSet.next()){
                %>
                
                    <div class="box">
                        <img src="image/blueBag.jpg" alt="" style="width:20%">
                            <div class="content">
                                <h3><%=resultSet.getString("productName") %></h3>
                                <h4>Price:$<%=resultSet.getString("price") %></h4>
                                <h4>Likes <%=resultSet.getString("liknum") %></h4>
                                
                                <p class="unit" >Quantity:<%=resultSet.getString("quantity") %> <!-- <input value="2">--> </p>
                                <p class="btn-area">
                                    <%
                                        String proid =resultSet.getString("id");
                                        
                                    %>
                                    
                                    <a href="LikeServlet?id=<%=proid%>"> <i class="fa fa-thumbs-up"></i></a>
                                    
                                    <span class="btn2">Add to cart</span> <input type="button" value="Buy now">

                                </p>
                            </div>
                    </div>
                    <%
                    }
                    connection.close();
                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    %>
                   
                </div>

              <!--  <div class="right-bar">
                    <p><span>Subtotal:</span> <span>$120</span></p>
                    <hr>
                    <p><span></span>Tax(5%)<span>$6 </span></p>
                    <hr>
                    <p><span>Shipping</span> <span>$10</span></p>
                    <hr>
                    <p><span>total</span> <span>$151</span></p>

                    <a href="#"><i class="fa fa-shopping-cart"></i>Checkout</a>
                </div> -->
            </div>
        </div>
        <script>
            ******************jQuery***************

$(window).scroll(function(){
  var sticky = $('.sticky'),
      scroll = $(window).scrollTop();

  if (scroll >= 100) sticky.addClass('fixed');
  else sticky.removeClass('fixed');
});
         </script>
    
    </body>
</html>
