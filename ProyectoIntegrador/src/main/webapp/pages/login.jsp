
<%@ page import = "fsj.proyect.integrador.MySqlConexion" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
 <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">

    <!-- Bootstrap CSS v5.2.1 -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css">

</head>
<body>


<%

	String name = request.getParameter("usuario");
	String pass = request.getParameter("contrasenia");
	boolean exito = false;
	

	
	
	
	//MySqlConexion conexion = new MySqlConexion();
		//Connection cn = conexion.conectar();
		Connection cn = MySqlConexion.conectar();
	try{
	
	Statement stm = cn.createStatement();
	
	
	ResultSet rs = stm.executeQuery ("SELECT nombre, contrasenia FROM logueo");
	
	
	//out.print(rsId);
	
	while(rs.next()) {
		//out.println(rs.getString(1)+rs.getString(2));
		//out.println(name + pass);
		if(name.equals(rs.getString(1)) && pass.equals(rs.getString(2)))	{
			exito=true;
			
		}
		
	}
	
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
if(exito) {
%>
<jsp:include page="./ticket.html"></jsp:include>
<%

}
else {
	%>
	Datos erróneos
	<%
}

%>







<%-- //puedo mostrar qué es lo que cargué:<jsp:include page="ticket.jsp"></jsp:include> --%>

</body>

</html>