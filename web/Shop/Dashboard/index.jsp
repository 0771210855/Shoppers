<%-- 
    Document   : index
    Created on : Aug 3, 2022, 9:04:15 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="../assets/css/styles.css">
        <title>Manager Panel</title>
    </head>
    <body>
        <div class="side-menu">
            <div class="brand-name">
                <h1>Quicky Shoppers</h1>
            </div>
            <ul>
                <li><img src="./image/dashboard (2).png" alt="">&nbsp;<span>Dashboard</span></li>
                <li><img src="./image/info.png" alt="">&nbsp;<span>Products</span></li>
                <li><img src="./image/reading-book(1).png" alt="">&nbsp;<span>Allocate</span></li>
                <li><img src="./image/teacher2.png" alt="">&nbsp;<span>Staff</span></li>
                <li><img src="./image/payement.png" alt="">&nbsp;<span>Sales</span></li>
                <li><img src="./image/payement.png" alt="">&nbsp;<span>Likes</span></li>
                <li><img src="./image/payement.png" alt="">&nbsp;<span>Line of product</span></li>
                <li><img src="./image/payement.png" alt="">&nbsp;<span>Reports</span></li>
            </ul>
        </div>
        <div class="container">
            <div class="header">
                <div class="nav">
                    <div class="search">
                        <input type="text" placeholder="Search...">
                        <button type="submit"><img src="./image/search.png" alt=""></button>
                    </div>
                    <div class="user">
                        <a href="#" class="btn">Add New</a>
                        <img src="" alt="">
                        <div class="img-case">
                            <img src="" alt=""/>
                        </div>
                        
                    </div>
                </div>
            </div>
             <div class="content">
            <div class="cards">
                <div class="card">
                    <div class="box">
                        <h1></h1>
                        <h3>Products</h3>
                    </div>
                    <div class="icon-case">
                        <img src="./image/info.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>53</h1>
                        <h3>Staff</h3>
                    </div>
                    <div class="icon-case">
                        <img src="./image/teachers.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>53</h1>
                        <h3>Likes</h3>
                    </div>
                    <div class="icon-case">
                        <img src="./image/teachers.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>53</h1>
                        <h3>Sales</h3>
                    </div>
                    <div class="icon-case">
                        <img src="./image/teachers.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>5</h1>
                        <h3>Long run Staff</h3>
                    </div>
                    <div class="icon-case">
                        <img src="./image/schools.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>35000</h1>
                        <h3>Sales</h3>
                    </div>
                    <div class="icon-case">
                        <img src="./image/income.png" alt="">
                    </div>
                </div>
            </div>
            <div class="content-2">
                <div class="recent-payments">
                    <div class="title">
                        <h2>Charts</h2>
                        <a href="#" class="btn">View All</a>
                    </div>
                    <table>
                       
                    </table>
                </div>
                <div class="new-students">
                    <div class="title">
                        <h2>New Products</h2>
                        <a href="#" class="btn">View All</a>
                    </div>
                    <table>
                       
                    </table>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
