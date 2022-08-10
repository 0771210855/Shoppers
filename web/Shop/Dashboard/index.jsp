<%-- 
    Document   : index
    Created on : Aug 3, 2022, 9:04:15 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*"%>
<%!ResultSet res;%>
<%!String query3,query1,query4,query5;%>
<%!ResultSet rs,rs1,rs2;%>
<%!ResultSet emp;%>
<%!Connection conn=null;%>
<%!Statement st,st1,s,p;%>
<%!String xlabel[]={};%>
<%!Integer ylabel[]={};%>
<%!ArrayList<Integer> y=new ArrayList<Integer>(Arrays.asList(ylabel));%>
<%!ArrayList<String> x=new ArrayList<String>(Arrays.asList(xlabel));%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
         <link rel="stylesheet" href="../assets/css/styles.css">
         <link rel="stylesheet" href="../assets/css/charts.css">
        <title>Manager Panel</title>
    </head>
   
    <body>
         <%
    //database connection
    try{
        Class.forName("com.mysql.jdbc.Driver");
  
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/quickyshoppers","root","");
      
         if(conn!=null){
         st = conn.createStatement();
        query1 = "select count(*) from customers";
        query3 = "select count(*) from staffallocations";
        query4 = "select count(*) from likes";
        query5 = "select count(*) from products";
         
        String query2 = "select * from staffallocations";
        emp=st.executeQuery(query2);
        while(emp.next()){
        x.add("'"+emp.getInt("id")+"'");
        y.add(emp.getInt("longTerm"));
        }
        
        xlabel=x.toArray(xlabel);
        ylabel=y.toArray(ylabel);        
             }
          
                            
                             
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
                <li><img src="../assets/image/dashboard.png" alt="">&nbsp;<span>Dashboard</span></li>
                <li><img src="../assets/image/info.png" alt="">&nbsp;<span>HR Management</span></li>
                <li><img src="../assets/image/product.png" alt="">&nbsp;<span>Products</span></li>
                <li><i class='bx bx-user'></i>&nbsp;<span>Staff</span></li>
                <li><i class='bx bx-user'></i>&nbsp;<span>Sales</span></li>
                <li><i class='bx bx-like'></i>&nbsp;<span>Likes</span></li>
<!--                <li><img src="./image/png" alt="">&nbsp;<span>Line of product</span></li>-->
                <li><img src="../assets/image/report.png">&nbsp;<span>Reports</span></li>
            </ul>
        </div>
        <div class="container">
            <div class="header">
                <div class="nav">
                    <div class="search">
                        <input type="text" placeholder="Search...">
                        <button type="submit"><img src="../assets/image/search.png" alt=""></button>
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
                        <h1>  <%  
                            Statement s=conn.createStatement();
                           res=s.executeQuery("select count(*) from customers");
                            res.next();
                            out.println(res.getInt("count(*)"));
                        %></h1>
                        <h3>Customers</h3>
                    </div>
                    <div class="icon-case">
<!--                        <img src="../assets/image/info.png" alt="">-->
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1><%
                            Statement p=conn.createStatement();
                            rs = p.executeQuery("select count(*) from staffallocations");
                            rs.next();
                            out.println(rs.getInt("count(*)"));
                            %></h1> 
                        <h3>Staff</h3>
                    </div>
                    <div class="icon-case">
<!--                        <img src="../assets/image/teachers.png" alt="">-->
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1><%
                              Statement st1 = conn.createStatement();
                              rs2 = st1.executeQuery("select count(*) from products");
                              rs2.next();
                              out.println(rs2.getInt("count(*)"));
                       %> </h1> 
                        <h3>Products</h3>
                    </div>
                    <div class="icon-case">
<!--                        <img src="../assets/image/teachers.png" alt="">-->
                    </div>
                </div>
                
                <div class="card">
                    <div class="box">
                      <h1><%
                              Statement st = conn.createStatement();
                              rs1 = st.executeQuery("select count(*) from likes");
                              rs1.next();
                              out.println(rs1.getInt("count(*)"));
                       %> </h1>
                        <h3>Likes</h3>
                    </div>
                    <div class="icon-case">
<!--                        <img src="../assets/image/schools.png" alt="">-->
                    </div>
                </div>
             </div>
            <table>
            <div class="content-2">
                <div class="charts">
                    <div class="chart">
                        <h2>Sales</h2
                        <div>
                            <canvas id="line"></canvas>
                        </div>
                   
                    <div class="chart">
                        <h2>Sales 1</h2
                        <div>
                            <canvas id="pie"></canvas>
                        </div>
                    </div>
                    </div>
                    </table>
                     
                </div>
            </div>
        
    
     <script src="../assets/js/chart.min.js"></script>
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
        
    }
});

        </script>
        <script>
         var ctx2 = document.getElementById('pie').getContext('2d');
var myChart2 = new Chart(ctx2, {
    type: 'pie',
    data: {
        labels: ['TECNO', 'IPHONE', 'ITEL', 'OTHERS'],

        datasets: [{
            label: 'Employees',
            data: [42, 12, 8, 6],
            backgroundColor: [
                'rgba(41, 155, 99, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(120, 46, 139,1)'

            ],
            borderColor: [
                'rgba(41, 155, 99, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(120, 46, 139,1)'

            ],
            borderWidth: 1
        }]

    },
    options: {
        responsive: true,
        indexAxis: 'y',
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
