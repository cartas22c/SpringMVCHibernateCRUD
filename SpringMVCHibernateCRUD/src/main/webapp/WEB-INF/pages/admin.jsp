
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<!-- Site made with Mobirise Website Builder v4.8.7, https://mobirise.com -->
<link href="css/admin.css" rel="stylesheet" type="text/css" />
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="generator" content="Mobirise v4.8.7, mobirise.com">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1">
<link href="css/admin.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/assetsReserva/images/logo4.png"
	type="image/x-icon">
<meta name="description" content="">
<title>Admin Reservas</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assetsReserva/tether/tether.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assetsReserva/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assetsReserva/bootstrap/css/bootstrap-grid.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assetsReserva/bootstrap/css/bootstrap-reboot.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assetsReserva/datatables/data-tables.bootstrap4.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assetsReserva/theme/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assetsReserva/mobirise/css/mbr-additional.css"
	type="text/css">



</head>
<body>
	<section
		class="mbr-section content5 cid-r92Yylfraj mbr-parallax-background"
		id="content5-8">

		<div class="container">
			<div class="media-container-row">
				<div class="title col-12 col-md-8">
					<h2
						class="align-center mbr-bold mbr-white pb-3 mbr-fonts-style display-1">Administracion
						Reservas</h2>
					<h3
						class="mbr-section-subtitle align-center mbr-light mbr-white pb-3 mbr-fonts-style display-7">
						 </h3>


				</div>
			</div>
		</div>
	</section>





	<div class="container">
		<div class="row justify-content-center">
			<div class="title col-12 col-lg-8">
				</br>
				<h2
					class="mbr-section-title align-center pb-3 mbr-fonts-style display-2">
					Registrar Reserva</h2>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row justify-content-center">
			<div class="media-container-column col-lg-8" data-form-type="formoid">
				<div data-form-alert="" hidden="">Thanks for filling out the
					form!</div>

				<form:form modelAttribute="cliente" method="post" class="mbr-form">
					<input type="hidden" name="email" data-form-email="true"
						value="ZhJKGK7lL8Wn/PoyF2ewnv80Vx+03qDniQSXV0gIKJ3jyLGAg3KqQBPT8NA++K21mcSMO1cJ2oZnENzkAfrpXE+Usdt0KKhFuprtGbm6AL9/JCXizFwOvbUMSyY/mow=">
					<div class="row row-sm-offset">
						<div class="col-md-4 multi-horizontal" data-for="name">
							<div class="form-group">
								<label class="form-control-label mbr-fonts-style display-7"
									for="name">Nombre</label>
								<form:input path="nombre" class="form-control" name="name"
									data-form-field="Name" id="name" />
								<span style="display: none; color: #fc1751; font-weight: bold;"
									id="infoNombre">Solo letras y espacios. Debe comenzar
									por mayuscula</span>

							</div>
						</div>
						<div class="col-md-4 multi-horizontal" data-for="primerApellido">
							<div class="form-group">
								<label class="form-control-label mbr-fonts-style display-7"
									for="primerApellido">Primer Apellido</label>
								<form:input path="primerApellido" class="form-control"
									name="primerApellido" data-form-field="primerApellido"
									id="primerApellido" />
								<span style="display: none; color: #fc1751; font-weight: bold;"
									id="infoApellido1">Solo letras y espacios. Debe comenzar
									por mayuscula</span>

							</div>
						</div>
						<div class="col-md-4 multi-horizontal" data-for="segundoApellido">
							<div class="form-group">
								<label class="form-control-label mbr-fonts-style display-7"
									for="segundoApellido">Segundo Apellido</label>
								<form:input path="segundoApellido" class="form-control"
									name="segundoApellido" data-form-field="segundoApellido"
									id="segundoApellido" />
								<span style="display: none; color: #fc1751; font-weight: bold;"
									id="infoApellido2">Solo letras y espacios. Debe comenzar
									por mayuscula</span>

							</div>
						</div>
						<div class="col-md-4 multi-horizontal" data-for="email">
							<div class="form-group">
								<label class="form-control-label mbr-fonts-style display-7"
									for="email">Email</label> <input type="text"
									class="form-control" name="email" data-form-field="email"
									required="required" id="email">
							</div>
						</div>

						<div class="col-md-4 multi-horizontal" data-for="phone">
							<div class="form-group">
								<label class="form-control-label mbr-fonts-style display-7"
									for="phone-form1-b">Phone</label> <input type="text"
									class="form-control" name="phone" data-form-field="Phone"
									id="phone-form1-b" required="required">
							</div>
						</div>


						<div class="col-md-2 multi-horizontal" data-for="sexo">
							<div class="form-group">
								<label class="form-control-label mbr-fonts-style display-7"
									for="hombre">Hombre</label>
								<form:radiobutton path="sexo" class="form-control"
									data-form-field="sexo" name="sexo" value="H" id="hombre" />
							</div>
						</div>


						<div class="col-md-2 multi-horizontal" data-for="sexo">
							<div class="form-group">
								<label class="form-control-label mbr-fonts-style display-7"
									for="mujer">Mujer</label>
								<form:radiobutton path="sexo" class="form-control"
									data-form-field="sexo" name="sexo" value="M" id="mujer" />
							</div>
						</div>
					</div>



					<div class="col-md-4 multi-horizontal" data-for="fechaEntrada">
						<div class="form-group">
							<label class="form-control-label mbr-fonts-style display-7"
								for="fechaEntrada">Fecha Entrada</label>
							<form:input type="date" class="form-control" name="fechaEntrada"
								data-form-field="fechaEntrada" path="fechaEntrada" />
							<span style="display: none; color: #fc1751; font-weight: bold;"
								id="infoFechaEntrada">La fecha de Entrada no puede ser
								menor que la fecha actual</span>

						</div>
					</div>

					<div class="col-md-4 multi-horizontal" data-for="fechaSalida">
						<div class="form-group">
							<label class="form-control-label mbr-fonts-style display-7"
								for="fechaSalida">Fecha Salida</label>
							<form:input type="date" path="fechaSalida" class="form-control"
								name="fechaSalida" data-form-field="fechaSalida"
								id="fechaSalida" />
							<span style="display: none; color: #fc1751; font-weight: bold;"
								id="infoFechaSalida">La fecha de Salida no puede ser
								menor que la fecha de Entrada</span>

						</div>
					</div>

					<div class="col-md-3 multi-horizontal" data-for="sexo">
						<div class="form-group">

							<label class="form-control-label mbr-fonts-style display-7"
								for="cts">Seleccione Centro</label> <br>
							<form:select path="centro">
								<form:options items="${centros}" itemValue="idCT"
									itemLabel="nombre" />
							</form:select>

						</div>
					</div>



					<input type="submit"
						class="btn btn-md btn-secondary-outline display-4">

					</form:form>
			</div>
		</div>
	</div>

	<br>
	<div class="container scroll"></div>




	<script type="text/javascript" src="js/admin.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assetsReserva/popper/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assetsReserva/tether/tether.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assetsReserva/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assetsReserva/smoothscroll/smooth-scroll.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assetsReserva/parallax/jarallax.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assetsReserva/datatables/data-tables.bootstrap4.min.js"></script>


</body>
</html>