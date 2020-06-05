<%-- 
    Document   : editarUsu
    Created on : 3/06/2020, 08:09:05 PM
    Author     : atapias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Editar cuenta</title>

    <!-- Animate.css -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="css/icomoon.css">

    <!-- Bootstrap  -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="css/magnific-popup.css">

    <!-- Theme style  -->
    <link rel="stylesheet" href="css/style.css">

    <!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>


</head>

<body>

    <div class="gtco-loader"></div>

    <div id="page">

        <nav class="gtco-nav" role="navigation">
            <div class="gtco-container">

                <div class="row">
                    <div class="col-sm-2 col-xs-12">
                        <div id="gtco-logo">
                            <a href="index.html"><img src="images/LogoChe.jpg" alt="Logo" width="50px"></a>
                        </div>
                    </div>
                    <div class="col-xs-10 text-right menu-1">
                        <ul>
                            <li><a href="index.html">Inicio</a></li>
                            <li><a href="sesion.html">Iniciar Sesión</a></li>
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
                                        <h1 class="no-margin"><strong>Editar</strong></h1>
                                        <p>Podrás editar todo tipo de cuenta.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="espacio">
            <h3 class="espacio">Completa todos los campos</h3>
        </div>
        <!-- 
			Nombre
			Apellido
			Correo
			Cargo (Enfermera,Familiar)
			Contraseña
			Confirma contraseña
			id
		 -->

        <form class="form-register" action="Controlador" method="POST">
            <h2 class="form-title">E<span>ditar cuenta</span></h2>
            <div class="contenedor-inputs">
                <input type="text" id="inputs" class="input-48" placeholder="Nombre" required name="txtnombre" value="${usuario.getNombre()}">

                <input type="text" id="inputs" class="input-48" placeholder="Apellido" required name="txtapellido" value="${usuario.getApellido()}">

                <input type="email" id="inputs" class="form-input" placeholder="Correo" required name="txtcorreo" value="${usuario.getCorreo()}">

                <input type="text" id="inputs" class="form-input" placeholder="Cargo" required name="txtcargo" value="${usuario.getCargo()}">

                <input type="password" id="inputs" class="form-input" placeholder="Contraseña" required name="txtcontrasena" value="${usuario.getContraseña()}">

                <input type="text" id="inputs" class="form-input" placeholder="Dirección" required name="txtdireccion" value="${usuario.getDireccion()}">

                <input type="text" id="inputs" class="form-input" placeholder="Id" required name="txtid" value="${usuario.getId()}">

                <input type="submit" class="btn-submit" value="Actualizar" name="accion">
                <p class="form-link">¿Ya tienes una cuenta? </p> <a href="#">Ingresa aquí</a>
            </div>
        </form>
        <br>
        <div class="espacio">
            <h3 class="espacio">...</h3>
        </div>



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
