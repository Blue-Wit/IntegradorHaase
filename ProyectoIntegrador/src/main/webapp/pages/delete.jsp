
<%@ page import = "fsj.proyect.integrador.MySqlConexion" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>

</head>
<body>


<%

	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String email = request.getParameter("email");
	String cantidad = request.getParameter("cantidad");
	String categoria = request.getParameter("categoria");
	
	//out.println(nombre+apellido+email+cantidad+categoria);
	
	
	//MySqlConexion conexion = new MySqlConexion();
		//Connection cn = conexion.conectar();
		Connection cn = MySqlConexion.conectar();
	
	try{
	
	Statement stm = cn.createStatement();
	
	
	ResultSet rsId = stm.executeQuery ("SELECT MAX(id) FROM tickets");//busca el último ticket ingresado
	
	
	//out.print(rsId);
	
	while(rsId.next()) {
		int idNum = rsId.getInt(1);
		String query = "UPDATE `tickets` SET reserva='0' WHERE id = "+idNum+" "; //genera la consulta y busca el valor con el que vamos a trabajar
		
		
		stm.executeUpdate(query);
		
	}
	
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	
%>

Se cargaron los datos;
<jsp:include page="ticket.jsp"></jsp:include>

<%-- //puedo mostrar qué es lo que cargué:<jsp:include page="ticket.jsp"></jsp:include> --%>

</body>

</html>