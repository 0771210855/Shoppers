<%-- 
    Document   : index
    Created on : Aug 3, 2022, 9:04:15 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*"%>
<%!ResultSet res;%>
<%!String query3,query1;%>
<%!ResultSet rs;%>
<%!ResultSet emp;%>
<%!Connection conn=null;%>
<%!Statement st,s,p;%>
<%!String xlabel[]={};%>
<%!Integer ylabel[]={};%>
<%!ArrayList<Integer> y=new ArrayList<Integer>(Arrays.asList(ylabel));%>
<%!ArrayList<String> x=new ArrayList<String>(Arrays.asList(xlabel));%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="../assets/css/styles.css">
        <title>Manager Panel</title>
    </head>
   
    <body>
         <%
    //database connection
    try{
        Class.forName("com.mysql.jdbc.Driver");
  
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/market","root","");
      
         if(conn!=null){
         st = conn.createStatement();
        query1 = "select count(*) from customers";
         query3 = "select count(*) from likes";
         
        String query2 = "select * from employees";
        emp=st.executeQuery(query2);
        while(emp.next()){
        x.add("'"+emp.getString("lastName")+"'");
        y.add(emp.getInt("employeeNumber"));
        }
        
        xlabel=x.toArray(xlabel);
        ylabel=y.toArray(ylabel);        
              }
         Statement p=conn.createStatement();
          rs = p.executeQuery(query3);
          rs.next();
          
           Statement s=conn.createStatement();
           res=s.executeQuery(query1);
           res.next();                 
                             
        }catch(ClassNotFoundException e){
        out.println("no driver found.");
        e.printStackTrace();
        }catch(SQLException e){
        out.println("Connection failed");
        e.printStackTrace();} 
       
  
    %>
        <div class="side-menu">
            <div class="brand-name">
                <h1>Quicky Shoppers</h1>
            </div>
            <ul>
                <li><img src="./image/dashboard (2).png" alt="">&nbsp;<span>Dashboard</span></li>
                <li><img src="./image/info.png" alt="">&nbsp;<span>HR Management</span></li>
                <li><img src="./image/reading-book(1).png" alt="">&nbsp;<span>Products</span></li>
                <li><img src="./image/teacher2.png" alt="">&nbsp;<span>Staff</span></li>
                <li><img src="./image/payement.png" alt="">&nbsp;<span>Sales</span></li>
                <li><img src="./image/.png" alt="">&nbsp;<span>Likes</span></li>
<!--                <li><img src="./image/png" alt="">&nbsp;<span>Line of product</span></li>-->
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
<!--                    <div class="user">
                        <a href="#" class="btn">Add New</a>
                        <img src="" alt="">
                        <div class="img-case">
                            <img src="" alt=""/>
                        </div>
                        
                    </div>-->
                </div>
            </div>
             <div class="content">
            <div class="cards">
                <div class="card">
                    <div class="box">
<!--                        <h1>         
                            out.println(res.getInt("count(*)"));
                        %></h1>-->
                        <h3>Customers</h3>
                    </div>
                    <div class="icon-case">
                        <img src="./image/info.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>2</h1> 
                        <h3>Staff</h3>
                    </div>
                    <div class="icon-case">
                        <img src="./image/teachers.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
<!--                        <h1>
                              out.println(rs.getInt("count(*)"));
                        %></h1>
                        <h3>Likes</h3>-->
                    </div>
                    <div class="icon-case">
                        <img src="./image/schools.png" alt="">
                    </div>
                </div>
             </div>
            <div class="content-2">
                <div class="charts">
                    <div class="chart">
                        <h2>Sales</h2
                        <div>
                            <canvas id="line"></canvas>
                        </div>
                    </div>
                    <div class="chart">
                        <h2>Sales 1</h2
                        <div>
                            <canvas id="pie"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <script src="./js/chart.min.js"></script>
      <script>
           var ctx2 = document.getElementById('line').getContext('2d');
           var myChart = new Chart(ctx2, {
    type: 'line',
    data: {
        labels: <%out.println(Arrays.toString(xlabel));%>,
        datasets: [{
            data: <% out.println(Arrays.toString(ylabel));%>,
            backgroundColor: [
                'rgba(85,85,85, 1)'

            ],
            borderColor: 'rgb(41, 155, 99)',

            borderWidth: 1
        }]
    },
    options: {
        responsive: true,
        maxAspectRatio:false,
    }
});
        </script>
      
        <%
        x.clear();
        y.clear();
        %>
        
    </body>
</html>
