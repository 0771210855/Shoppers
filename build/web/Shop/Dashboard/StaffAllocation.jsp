<%-- 
    Document   : index
    Created on : Aug 3, 2022, 9:04:15 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*"%>
<%@page import="Servlets.*"%>
<%@ include file="../../connection.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../assets/css/styles.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css" rel="stylesheet"/>
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="https://cdn.datatables.net/plug-ins/28e7751dbec/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet"/>
    
        
        <link rel="stylesheet" href="../assets/css/staff.css">
        <title>Manager Panel/Staff allocation</title>
    </head>

    <body>
        <div class="side-menu">
            <div class="brand-name">
                <h1>Quicky Shoppers</h1>
            </div>
            
            <ul>
                
                <li><img src="./image/dashboard (2).png" alt="">&nbsp;<span>Dashboard</span></li>
                <li><img src="./image/info.png" alt="">&nbsp;<span>HR Management</span></li>
                <li><img src="./image/reading-book(1).png" alt="">&nbsp;<span>Products</span></li>
                <li class="active"><img src="./image/teacher2.png" alt="">&nbsp;<a href="../../AllocateStaff"><span>Staff</span></a></li>
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
                            <h1>17</h1>
                            <h3>Long term Staff</h3>
                        </div>
                        <div class="icon-case">
                            <img src="./image/info.png" alt="">
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>8</h1> 
                            <h3>Mid term Staff</h3>
                        </div>
                        <div class="icon-case">
                            <img src="./image/teachers.png" alt="">
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>1</h1> 

                            <h3>Short term Staff</h3>
                        </div>
                    </div>
                </div>
                <div class="content-2">
                    <div class="new-students">
                        <div class="title">
                               
                            <h2>Staff Allocation Track </h2>
                            <form action="../../AllocateStaff" method="POST">
                                
                                <input type="button" value="Allocate" name="allocate">
                            </form>
                          
                        </div>
                        <div class="row mt-5">
                            <div class="col-10 mx-auto">
                                <div class="table-responsive">
                                    <table class="table" id="myTable">
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
                                      <%
                                        try{
                                        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                                        //Connection con = DBconnection.getConnection();
                                        statement=connection.createStatement();
                                        String sqlstaff ="select * from staffallocations";
                                        resultSet = statement.executeQuery(sqlstaff);
                                        int row=1;
                                        while(resultSet.next()){
                                        
                                        %>
                                    <tr>
                                      <th scope="row"><%=row %></th>
                                      <td><%=resultSet.getInt("longTerm") %></td>
                                      <td><%=resultSet.getInt("midTerm") %></td>
                                      <td><%=resultSet.getInt("shortTerm") %></td>
                                      <td><%=resultSet.getString("created_at") %></td>
                                    </tr>
                                    <%
                                        row=row+1;
                                    }
                                    connection.close();
                                    } catch (Exception e) {
                                    e.printStackTrace();
                                    }
                                    %>
                                    
                                  </tbody>
                                </table>
                                </div>

                        </div>
                            
                        </div>

                    </div>
                </div>
            </div>
        </div>
                                    
                                    
                                    
<script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.10.0/js/jquery.dataTables.js"></script>
    <script>
    $(document).ready( function () {
    $('#myTable').DataTable();
    } );
    </script>

    </body>
</html>
