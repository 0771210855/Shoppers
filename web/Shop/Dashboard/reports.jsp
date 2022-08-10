<%-- 
    Document   : reports
    Created on : Aug 10, 2022, 3:05:15 AM
    Author     : ADMIN
--%>
<!--
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.util.*,java.sql.*,java.time.*,java.time.format.DateTimeFormatter" %>
<%!Connection connection=null;%>
<%!ResultSet set;%>
<%!String sql,sql2,sql3;%><!--String for Queries-->
<%!Statement statement=null;%>
<%!Integer line[] ={};%>
<%!Integer like[] ={};%>
<%!Integer dislike[] ={};%>
<%!String bar_label[] ={};%>
<%!String dislike_label[] ={};%>
<%!ArrayList<Integer> arrayList = new ArrayList<Integer>(Arrays.asList(line));%>
<%!ArrayList<Integer> arrayLike = new ArrayList<Integer>(Arrays.asList(like));%><!-- like -->
<%!ArrayList<Integer> arrayDisLike = new ArrayList<Integer>(Arrays.asList(dislike));%><!-- dislike -->
<%!ArrayList<String> x_dislike = new ArrayList<String>(Arrays.asList(dislike_label));%><!-- line label -->
<%!ArrayList<String> lineLabel = new ArrayList<String>(Arrays.asList(bar_label));%><!-- line label -->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/all.css"/>
        
    <link rel="stylesheet" href="css/register.css"/>
     <link rel="stylesheet" href="css/styles.css"/>
     <link rel="stylesheet" href="table.css"/> 
        
        <title>Report</title>
    </head>
    <body>
        <!--<!--Database quering for pie-chart -->
        <%
                try{
            Class.forName("com.mysql.jdbc.Driver");
//            out.println("Driver Registered");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/quickyshoppers","root","1234");
            }catch(ClassNotFoundException e){
               out.println("Where is the Driver?");
               e.printStackTrace();
            }catch(SQLException e){
                 out.println("Connection failed Sir,try farming leave Netbeans alone");
                 e.printStackTrace();
            }
          if(connection!=null){
//           out.println("Connection was successful");
           
           
           //int i=statement.executeUpdate(sqlI);
            sql="select count(*) from customers where Line='long'";
            sql2="select * from products";
            sql3="select * from likes";
            
            statement=connection.createStatement();
            ResultSet product=statement.executeQuery(sql2);
            while(product.next()){ //resultset for bar graph
            
              lineLabel.add("'"+product.getString("productName")+"'");
              arrayList.add(product.getInt("Quantity")); 
          }
          
         //resultset for like part
         ResultSet LikeSet=statement.executeQuery(sql3);
         while(LikeSet.next()){
               arrayLike.add(LikeSet.getInt("llike"));
               arrayDisLike.add(LikeSet.getInt("dislike"));
               x_dislike.add("'"+LikeSet.getString("name")+"'");
            }
          //end of resultset for like part
            like=arrayLike.toArray(like);
            dislike=arrayDisLike.toArray(dislike);
            dislike_label=x_dislike.toArray(dislike_label);
            bar_label=lineLabel.toArray(bar_label);
            line = arrayList.toArray(line);
         }
           %>
    <div class="container">
           <div class="main">
          <input type="button" value="Print PDF" onclick="generatePDF()" class="print"/>
          <div class="grid" id="print">
            <div class="chart doughnut-chart">
                <h2>Report1</h2>
                <div>
                    <canvas id="r1"></canvas>
                </div>
            </div>
            <div class="chart doughnut-chart">
                <h2> Report 2</h2>
               
                <div>
                    <canvas id="r2"></canvas>
                </div>
            </div>
            <div class="chart doughnut-chart">
                <h2>Report 3</h2>
                <div>
                    <canvas id="r3"></canvas>
                </div>
            </div>
              <!-- Table -->
              <div class="chart doughnut-chart">
                  <h2>Staff</h2>
                 <div class="table-wrapper">
                    <table class="styled-table">
                       <!--Retrieving table data -->
                     
                      <thead>
                        <tr>
                          <th>fName</th>
                          <th>LName</th>
                          <th>age</th>
                          <th>line</th>
                      </tr>
                      </thead>
                         <%
                         Statement c=connection.createStatement();
                         ResultSet table=c.executeQuery("select * from staff");
                         while(table.next()){
                         %>
                         
                      <tr>
                          <td><%out.println(table.getString("firstName"));%></td>
                          <td><%out.println(table.getString("lastName"));%></td>
                          <td><%out.println(table.getInt("age"));%></td>
                          <td><%out.println(table.getString("Line"));%></td>
                      </tr>
                      <%}%>
                    </table>
                 </div>
            </div
          </div>
          </div>
        </div>
    </div>
                    
        <script src="./js/chart.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
         <script>
            var ctx = document.getElementById("r1").getContext("2d");
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: <%out.println(Arrays.toString(bar_label));%>,//bar graph labels
        datasets: [{
            label: 'Total Sales',
            data:<%out.println(Arrays.toString(line));%>,
            backgroundColor: [
                'rgba(85,85,85, 1)'

            ],
            borderColor: 'rgb(41, 155, 99)',
            backgroundColor: 'rgb(124, 181, 236)',
            borderWidth: 1,
        }]
    },
    options: {
        responsive: true,
        indexAxis: 'y',
        scales: {
      y: {
        ticks: {
          crossAlign: 'false'
        }
      }
    },
    plugins:{datalabels:{anchor:'end',align:'top'}}
    },
    plugins:[ChartDataLabels]
});
// chart for report 2
</script>

<script>
  var ctx2 = document.getElementById('r2').getContext('2d');
var myChart2 = new Chart(ctx2, {
    type: 'pie',
    data: {
        labels: ['LONG', 'SHORT', 'MEDIUM'],

        datasets: [{
            label: 'Employees',
            data:<%out.println(Arrays.toString(line));%>,
            
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
        "maintainAspectRatio": false
    }
});
</script>
<!-- Bar graph -->
<script>
var ctx = document.getElementById("r3").getContext("2d");
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels:<% out.println(Arrays.toString(dislike_label));%> ,
        datasets: [{
            label: 'Like',
            data: <% out.println(Arrays.toString(like));%>,
            backgroundColor: [
                'rgba(0,255,0)'

            ],
            borderColor: 'rgb(41, 155, 99)',
            borderWidth: 1
        }
    ]
    },
    options: {
        responsive: true
        
    }
});
ctx.style.backgroundColor='rgba(255,0,0,255)';
</script>
<!--Script to print the report-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
<script>
 async function generatePDF(){
     var downloading =document.getElementById("print");
     var doc=new jsPDF('l','px','a4');
     await html2canvas(downloading,{
         width:1400,
         height:1000
     }).then((canvas)=>{
         doc.addImage(canvas.toDataURL("image/png"),"PNG",5,5,500,500);
     });
     doc.save("Document.pdf");
 }
</script>
<% 
    //closin the arraylist because they reload with prevoius data if you dont clear();
 arrayLike.clear();
 arrayDisLike.clear();
 x_dislike.clear();
 arrayList.clear();
 lineLabel.clear();
 connection.close();                                                                                                                                                                                                                                                                                                                                                  
%>
    </body>
</html>