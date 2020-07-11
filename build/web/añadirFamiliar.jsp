<%-- 
    Document   : añadirFamiliar
    Created on : 8/06/2020, 01:26:20 AM
    Author     : atapias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Añadir familiar</title>
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
            #barra {
                position: fixed;
                margin-bottom: 10px;
            }
            
            
            
            #form-lora {
                    margin: auto;
                    width: 150%;
                    height: 400px;
                    max-width: 900px;
                    max-height: 1000px;
                    background: #3dcdbc;
                    border-radius: 10px;
            
            }
            .form-title2 {
            background: #33a2bd;
    padding: 20px;
    text-align: center;
    border-bottom: 5px solid white;
    font-family: sans-serif;
    color: white;
}

#inputs2 {
    margin-bottom: 15px;
    padding: 15px;
    font-size: 16px;
    border-radius: 3px;
    border: 1px solid orange;
    border: none;
    outline: none;
    border-bottom: 2px solid white;
    color: #fff;
    font-family: sans-serif;
    background: #33a2bd;
}

.btn-submit2 {
    color: #fff;
    font-family: sans-serif;
    margin: auto;
    padding: 10px 40px;
    font-size: 17px;
    transition: all .3s ease;
    cursor: pointer;
    background: #154360;
    border: none;
    outline: none;
}

.btn-submit2:hover {
    background: #f29718;
    border: groove darkgoldenrod;
}
        </style>

    </head>
    <body>

        <div class="gtco-loader"></div>

        <div id="page">

            <nav class="gtco-nav" role="navigation" id="barra">
                <div class="gtco-container">

                    <div class="row">
                        <div class="col-sm-2 col-xs-12">
                            <div id="gtco-logo"><a href="index.html"><img src="images/LogoChe.jpg" alt="Logo" width="50"></a></div>
                        </div>
                        <div class="col-xs-10 text-right menu-1">
                            <ul>
                                <li><a href="index.html">Inicio</a></li>
                                <li><a href="familiarpri.html">Volver</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </nav>

            <header id="gtco-header" class="gtco-cover gtco-cover-xs gtco-inner" role="banner" style="height: 300px">
                <div class="gtco-container">
                    <div class="row">
                        <div class="col-md-12 col-md-offset-0 text-left">
                            <div class="display-t">
                                <div class="display-tc">
                                    <div class="row">
                                        <div class="col-md-8 animate-box">
                                            <h1 class="no-margin" style="position: relative; bottom: -70px; left: 40px;"><strong>Añadir a un familiar</strong></h1>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- END #gtco-header -->

            <div class="gtco-section">
                <div class="gtco-container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 gtco-heading text-center">
                            <div>
                                <div class="espacio">
                                    <h3  class="espacio" style="text-aling: center">Para añadir a tu familiar, ingresa los siguientes datos</h3>
                                </div>
                                <form id="form-lora" action="ControladorFa" method="POST">
                                    <h2 class="form-title2"><span>Añadir familiar</span></h2>
                                    <div class="contenedor-inputs">
                                        <input type="text" id="inputs2" class="form-input" placeholder="Identificación de tu familiar" required name="txtidf">
                                        <input type="text" id="inputs2" class="form-input" placeholder="Tu identificación" required name="txtid">
                                        <select name="txtcargo" id="inputs2" class="form-input" required>
                                                <option disabled selected>Selecciona un parentesco</option>
                                                <option value="1">Hijo/a</option> 
                                                <option value="2">Nieto/a</option>
                                                <option value="1">Sobrino/a</option> 
                                                <option value="2">Primo/a</option>
                                                <option value="1">Amigo/a</option> 
                                                <option value="2">Otro</option>
                                        </select>
                                        <input type="submit" class="btn-submit2" value="Añadir" name="accion">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
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
