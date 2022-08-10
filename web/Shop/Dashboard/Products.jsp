<%-- 
    Document   : index
    Created on : Aug 3, 2022, 9:04:15 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../assets/css/styles.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="../assets/css/staff.css">
        <title>Manager Panel/Product allocation</title>
    </head>

    <body>
        <div class="side-menu">
            <div class="brand-name">
                <h1>Quicky Shoppers</h1>
            </div>
            
            <ul>
                
                <li><img src="./image/dashboard (2).png" alt="">&nbsp;<span>Dashboard</span></li>
                <li><img src="./image/info.png" alt="">&nbsp;<span>HR Management</span></li>
                <li class="active"><img src="./image/reading-book(1).png" alt="">&nbsp;<span>Products</span></li>
                <li ><img src="./image/teacher2.png" alt="">&nbsp;<span>Staff</span></li>
                <li><img src="./image/payement.png" alt="">&nbsp;<span>Sales</span></li>
                <li><img src="./image/.png" alt="">&nbsp;<span>Likes</span></li>
                <!--<li><img src="./image/png" alt="">&nbsp;<span>Line of product</span></li>-->
                <li><img src="./image/.png" alt="">&nbsp;<span>Reports</span></li>
            </ul>
            
        </div>
        <div class="container">
            <div class="header">
                <div class="nav">
                    <div class="search">
                        <input type="text" placeholder="Search...">
                        <button type="submit"><img src="./image/search.png" alt=""></button>
                    </div>

                </div>
            </div>
            <div class="content">
                <div class="cards">
                    <div class="card">
                        <div class="box">
                            <h1>2</h1>
                            <h3>Long term Staff</h3>
                        </div>
                        <div class="icon-case">
                            <img src="./image/info.png" alt="">
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>2</h1> 
                            <h3>Long term Staff</h3>
                        </div>
                        <div class="icon-case">
                            <img src="./image/teachers.png" alt="">
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>2</h1> 
                            <h3>Long term Staff</h3>
                        </div>
                    </div>
                </div>
                <div class="content-2">
                    <div class="new-students">
                        <div class="title">
                            <h2>Production Amount</h2>
                            <form action="" method="POST">
                                <input type="number" name="products">
                                <input type="button" value="Allocate" name="allocate">
                            </form>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="table-responsive">
                                  <table class="table">
                                  <thead>
                                    <tr>
                                      <th scope="col">#</th>
                                      <th scope="col">Long term</th>
                                      <th scope="col">Mid term</th>
                                      <th scope="col">Short term</th>
                                      <th scope="col">Allocation Time</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>34</td>
                                      <td>35</td>
                                      <td>40</td>
                                      <td>2202:868:099</td>
                                    </tr>
                                    
                                  </tbody>
                                </table>
                                </div>

                        </div>
                            
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
