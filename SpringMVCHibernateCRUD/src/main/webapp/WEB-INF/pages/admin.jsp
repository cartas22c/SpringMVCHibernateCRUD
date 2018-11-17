
<%@taglib uri="http://java.sun.com/jstl/core" prefix="cc"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<title>ViajesColombia</title>
</head>
<body>
	<h1 style="text-align: center;">ViajesColombia.COM</h1>
	<br>
	<h2 style="text-align: center;">Administracion ViajesColombia!</h2>
	<br> Zona Registro:
	<form:form  modelAttribute="cliente" action="saveCliente" method="post" >
		Nombre: <form:input path="nombre"   /></br>
		Primer Apellido: <form:input path="primerApellido" /></br>
		Segundo Apellido: <form:input path="segundoApellido" /></br>
		Fecha Entrada: <form:input type="date" path="fechaEntrada" /></br>
		Fecha Salida: <form:input type="date" path="fechaSalida" /></br>
		Hombre: <form:radiobutton path="sexo" value="M" />
		Mujer: <form:radiobutton path="sexo" value="F" /></br></br>
		Centro Turistico: 
	 <form:select path="centro">
                     <form:options items="${centros}" itemValue="idCT" itemLabel="nombre" />
                </form:select>
		<input type="button"
						class="btn btn-md btn-secondary-outline display-4" id="registrar"
						name="registar" value="Registar">

	</form:form>
	<br />
	<!-- In case there was any error message, we show it -->
	<p style="color: red;">
		<c:out value="${message}" />
	</p>
	<script type="text/javascript" src="webapp/js/admin.js"></script>

</body>
</html>

