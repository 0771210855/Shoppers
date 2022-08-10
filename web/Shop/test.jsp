<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Servlets.AllocateStaff" %>
<%@page import="Servlets.AllocateStaff" %>


<!DOCTYPE html>
<html>
<body>
    <%=request.getAttribute("midterm") %>

<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>first name</td>
<td>last name</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
//Connection con = DBconnection.getConnection();
statement=connection.createStatement();
String sql ="select * from sales";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("customerId") %></td>
<td><%=resultSet.getString("productId") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 

</body>
</html>