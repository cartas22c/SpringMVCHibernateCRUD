
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<!-- Site made with Mobirise Website Builder v4.8.7, https://mobirise.com -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="generator" content="Mobirise v4.8.7, mobirise.com">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1">
<link rel="shortcut icon" href="assets/images/logo4.png"
	type="image/x-icon">
<meta name="description" content="">
<title>Home</title>
 <link rel="stylesheet"
	href=${pageContext.request.contextPath}/resources/assets/web/assets/mobirise-icons/mobirise-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/tether/tether.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/bootstrap/css/bootstrap-grid.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/bootstrap/css/bootstrap-reboot.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/socicon/css/styles.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/theme/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/mobirise/css/mbr-additional.css"
	type="text/css">

	<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	        rel="stylesheet">
</head>
<body>

 
	<section class="cid-qTkA127IK8 mbr-fullscreen mbr-parallax-background"
		id="header2-1">
 
 

		<div class="container align-center">
			<div class="row justify-content-md-center">
				<div class="mbr-white col-md-10">
					<h1
						class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-1">
						ViajesColombia</h1>

					<p class="mbr-text pb-3 mbr-fonts-style display-5">...Enjoy the
						life...</p>

					<form:form modelAttribute="login" method="post">
						<div class="mbr-section-btn">
							<label for="login">Usuario</label>
							<form:input path="login" class="btn btn-md btn-white-outline display-4" placeholder="Usuario" />
							<label for="password">Contraseña</label>
							<form:password path="password"
								class="btn btn-md btn-white-outline display-4" id="pwd"
								name="pwd" placeholder="Contraseña" />
							<input type="submit"
								class="btn btn-md btn-secondary-outline display-4" id="bt1"
								name="bt1" value="Entrar">
						</div>
					</form:form>
					<!-- In case there was any error message, we show it -->
					<p style="color: red;">
						<c:out value="${message}" />
					</p>
				</div>
			</div>
		</div>
	</section>

	<section class="engine">
		<a href="https://mobirise.info/s">bootstrap themes</a>
	</section>
	<section class="cid-qTkAaeaxX5" id="footer1-2">

		<div class="container">
			<div class="media-container-row content text-white">
				<div class="col-12 col-md-3">
					<div class="media-wrap">
						<a href="https://mobirise.com/"> <img
							src="resources/assets/images/logo2.png" alt="Mobirise">
						</a>
					</div>
				</div>
				<div class="col-12 col-md-3 mbr-fonts-style display-7">
					<h5 class="pb-3">Address</h5>
					<p class="mbr-text">
						1234 Street Name <br>City, AA 99999
					</p>
				</div>
				<div class="col-12 col-md-3 mbr-fonts-style display-7">
					<h5 class="pb-3">Contacts</h5>
					<p class="mbr-text">
						Email: support@mobirise.com <br>Phone: +1 (0) 000 0000 001 <br>Fax:
						+1 (0) 000 0000 002
					</p>
				</div>
				<div class="col-12 col-md-3 mbr-fonts-style display-7">
					<h5 class="pb-3">Links</h5>
					<p class="mbr-text">
						<a class="text-primary" href="https://mobirise.com/">Website
							builder</a> <br> <a class="text-primary"
							href="https://mobirise.com/mobirise-free-win.zip">Download
							for Windows</a> <br> <a class="text-primary"
							href="https://mobirise.com/mobirise-free-mac.zip">Download
							for Mac</a>
					</p>
				</div>
			</div>
			<div class="footer-lower">
				<div class="media-container-row">
					<div class="col-sm-12">
						<hr>
					</div>
				</div> 
				
 				<div class="media-container-row mbr-white">
					<div class="col-sm-6 copyright">
						<p class="mbr-text mbr-fonts-style display-7">© Copyright 2018
							Sandra Cartas- All Rights Reserved</p>
					</div>
					<div class="col-md-6"></div>
				</div>
			</div>
		</div>
	</section>

	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webapp/assets/webwebapp/assets/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/popper/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/tether/tether.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/smoothscroll/smooth-scroll.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/parallax/jarallax.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/theme/js/script.js"></script>


</body>
</html>