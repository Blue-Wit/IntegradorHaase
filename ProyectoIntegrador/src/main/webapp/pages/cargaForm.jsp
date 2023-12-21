
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
	int cantidad = Integer.parseInt(request.getParameter("cantidad"));
	String categoria = request.getParameter("categoria");
	
	//out.println(nombre+apellido+email+cantidad+categoria);
	
	
	//MySqlConexion conexion = new MySqlConexion();
	//Connection cn = conexion.conectar();
	Connection cn = MySqlConexion.conectar();
	
	String query = "INSERT INTO tickets (nombre, apellido, email, cantidad, categoria) VALUES ('"+nombre+"','"+apellido+"','"+email+"',"+cantidad+",'"+categoria+"')";//lo ingreso así porque es un String
	
	
	try {
		//o trabajo con PreparedStatement pstm = cn.createStatement ();
		Statement stm = cn.createStatement();
		stm.executeUpdate(query); 
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	
%>

Se cargaron los datos;
<jsp:include page="ticket.jsp"></jsp:include>

<%-- //puedo mostrar qué es lo que cargué:<jsp:include page="ticket.jsp"></jsp:include> --%>

</body>

</html>