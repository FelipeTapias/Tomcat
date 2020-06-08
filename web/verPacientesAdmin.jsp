<%-- 
    Document   : verPacientesAdmin
    Created on : 8/06/2020, 01:03:14 AM
    Author     : atapias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Lista de pacientes</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />



	<link href="https://fonts.googleapis.com/css?family=Raleway:100,300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
        <style>
          table {
            width: 55%;
            border: 1px solid #999;
            text-align: center;
            border-collapse: collapse;
            margin: 0 0 1em 0;
            caption-side: top;
            text-align: center;
   
        }
        
        th, td {
          border-bottom: 1px solid #999;
          text-align: center;
          
        }
        </style>

	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">
		<nav class="gtco-nav" role="navigation">
			<div class="gtco-container">	
				<div class="row">
					<div class="col-sm-2 col-xs-12">
						<div id="gtco-logo"><a href="index.html"><img src="images/LogoChe.jpg" alt="Logo" width="50px"></a></div>
					</div>
					<div class="col-xs-10 text-right menu-1">
						<ul>
							<li><a href="index.html">Inicio</a></li>
						</ul>
					</div>
				</div>	
			</div>
		</nav>
		<header id="gtco-header" class="gtco-cover gtco-cover-xs gtco-inner" role="banner">
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-left">
						<div class="display-t">
							<div class="display-tc">
								<div class="row">
									<div class="col-md-8 animate-box">
										<h1 class="no-margin"><strong>Pacientes registrados en ChequeaMed</strong></h1>
										<p>Recuerda que puedes: editar y eliminar pacientes.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
        </div>

		
<center>
    <div>
    <h1 class="no-margin"><strong>Registrados </strong></h1>
    <form action="ControladorPa" method="POST">
    <input type="search" id="miBusqueda" name="q">
    <a href="" onClick= return><input type="button" value="Buscar"></a><br><br>
    <input type="submit" name="accion" value="Listar">
    <input type="submit" name="accion" value="Nuevo">
	</form>
    </div>
	<br>
	<div>  
            
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>PRIMER APELLIDO</th>
                    <th>SEGUNDO APELLIDO</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="dato" items="${datos}">
               <tr>    
                   <td style="text-align: center;">${dato.getId()}</td>   
                   <td style="text-align: center;">${dato.getNombre()}</td>   
                   <td style="text-align: center;">${dato.getApellido()}</td>   
                   <td style="text-align: center;">${dato.getApellido2()}</td>   
                   <td style="text-align: center;">
                       <form action="ControladorPa" method="POST">
                           <input type="hidden" name="id" value="${dato.getId()}">
                           <input type="submit" name="accion" value="Editar">
                       </form>
                   </td> 
                   <td style="text-align: center;">
                       <form action="ControladorPa" method="POST">
                           <input type="hidden" name="id" value="${dato.getId()}">
                           <input type="submit" name="accion" value="Delete">
                       </form>
                   </td>
               </tr>
               </c:forEach>
            </body>
</center>      
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>
