<%-- 
    Document   : orders
    Created on : Aug 3, 2022, 9:05:16 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Orders</title>
        <link rel="stylesheet" href="./css/style.css">
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>
         <div class="container">
            <nav>
                <ul>
                   
                    <li style="float: right;"> <a href="#">ORDERS</a></li>
                    <li style="float: right;"> <a href="#">CART</a></li>
                    <li style="float: right;"> <a href="logout.jsp">LOG-OUT</a></li>
                   
                </ul>
            </nav>
         </div>
        <h4>ALL ORDERS.</h4>
         <table>
            <thead>
                
            <th>Date</th>
            
            <th>Product</th>
            
            <th>Quantity</th>
    
            <th>Price</th>
            <th></th>
            </thead>
        </table>
       
           <div class="right-bar">
                    <p><span>Subtotal:</span> <span>$120</span></p>
                    <hr>
                    <p><span></span>Tax(5%)<span>$6 </span></p>
                    <hr>
                    <p><span>Shipping</span> <span>$10</span></p>
                    <hr>
                    <p><span>total</span> <span>$151</span></p>

                    <a href="#"><i class="fa fa-shopping-cart"></i>Checkout</a>
                </div>
    </body>
</html>
       
