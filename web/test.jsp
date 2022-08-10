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
    <%= request.getAttribute("val") %>
    <%= request.getAttribute("ver") %>

<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>first name</td>
<td>last name</td>

</tr>

<tr>

</tr>

</table> 

</body>
</html>