<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "fsj.proyect.integrador.MySqlConexion" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Connection cn = MySqlConexion.conectar();
	PreparedStatement ps = cn.prepareStatement("SELECT * FROM tickets");
	ResultSet rs = ps.executeQuery();

%>



<table>
<tr>
<th>id</th>
<th>Nombre</th>
<th>Apellido</th>
<th>Mail</th>
<th>Cantidad</th>
<th>Categoria</th>
<th>Reserva</tr>
<% while(rs.next()) { %>

<tr>
<td><%= rs.getInt(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getInt(5) %></td>
<td><%= rs.getString(6) %></td>
<td><%= rs.getInt(8) %></td>

<%--<td>Eliminar</td>
<td>Modificar</td> --%>


<% }  %>

</table>


</body>
</html>