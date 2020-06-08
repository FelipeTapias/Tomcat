<%-- 
    Document   : editarPaciente
    Created on : 7/06/2020, 08:38:34 PM
    Author     : atapias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Editar paciente</title>

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
                                <li><a href="enfermerapri.html">Volver</a></li>
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
                                            <h1 class="no-margin"><strong>Editar paciente</strong></h1>
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

            <form class="form-register" action="ControladorPa" method="POST">
                <h2 class="form-title">E<span>ditar paciente</span></h2>
                <div class="contenedor-inputs">
                    <input type="text" id="inputs" class="form-input" placeholder="Nombre" required name="txtnombre" value="${paciente.getNombre()}">

                    <input type="text" id="inputs" class="input-48" placeholder="Primer apellido" required name="txtapellido" value="${paciente.getApellido()}">
                    
                    <input type="text" id="inputs" class="input-48" placeholder="Segundo apellido" required name="txtapellido2" value="${paciente.getApellido2()}">

                    <input type="text" id="inputs" class="form-input" placeholder="Id" required name="txtid" value="${paciente.getId()}">

                    <input type="submit" class="btn-submit" value="Actualizar" name="accion">
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