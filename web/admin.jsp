<%-- 
    Document   : admin
    Created on : 5/06/2020, 11:15:26 AM
    Author     : atapias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Administrador</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
  <meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
  <meta name="author" content="FreeHTML5.co" />

    <!-- Facebook and Twitter integration -->
  <meta property="og:title" content=""/>
  <meta property="og:image" content=""/>
  <meta property="og:url" content=""/>
  <meta property="og:site_name" content=""/>
  <meta property="og:description" content=""/>
  <meta name="twitter:title" content="" />
  <meta name="twitter:image" content="" />
  <meta name="twitter:url" content="" />
  <meta name="twitter:card" content="" />

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

  </head>
  <body>
    
  <div class="gtco-loader"></div>
  
  <div id="page">

    <nav class="gtco-nav" role="navigation">
      <div class="gtco-container">
        
        <div class="row">
          <div class="col-sm-2 col-xs-12">
            <div id="gtco-logo"><a href="index.html"><img src="images/LogoChe.jpg" alt="Logo" width="50"></a></div>
          </div>
          <div class="col-xs-10 text-right menu-1">
              <form action="Controlador">
            <ul>
              <li class="active"><a href="index.html">Inicio</a></li>
              <li><a href="index.html">Cerrar Sesion</a></li>
            </ul>
           </form>
          </div>
        </div>
        
      </div>
    </nav>

    <header id="gtco-header" class="gtco-cover" role="banner">
      <div class="gtco-container">
        <div class="row">
          <div class="col-md-12 col-md-offset-0 text-left">
            <div class="display-t">
              <div class="display-tc">
                <div class="row">
                  <div class="col-md-7 copy animate-box">
                    <h1><strong>Hola Administrador! que gusto tenerte de nuevo.</strong></h1>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- END #gtco-header -->


    <div class="gtco-section gtco-products">
      <div class="gtco-container">
        <div class="row row-pb-sm">
          <div class="col-md-8 col-md-offset-2 gtco-heading text-center">
            <h2>¿Qué quieres hacer hoy?</h2>
            <p>Recuerda que en esta sesión puedes elegir las diferentes opciones que tiene ChequeaMed.</p>
          </div>
        </div>
        <div class="row row-pb-md">
          <div class="col-md-4 col-sm-4">
            <a href="añadirpaciente.html" class="gtco-item two-row bg-img animate-box" style="background-image: url(images/img_1.jpg)">
              <div class="overlay">
                <i class="ti-arrow-top-right"></i>
                <div class="copy">
                  <h3>Añadir nuevo paciente</h3>
                  <p>Te ayudaremos a crear un nuevo paciente para tu lista.</p>
                </div>
              </div>
              <img src="images/img_1.jpg" class="hidden" alt="Free HTML5 Website Template by FreeHTML5.co">
            </a>
            <a href="cambiohorario.html" class="gtco-item two-row bg-img animate-box" style="background-image: url(images/img_2.jpg)">
              <div class="overlay">
                <i class="ti-arrow-top-right"></i>
                <div class="copy">
                  <h3>Cambiar hoarario de turno</h3>
                  <p>Deseo cambiar mis horarios de turno.</p>
                </div>
              </div>
              <img src="images/img_2.jpg" class="hidden" alt="xdxd">
            </a>
          </div>
          <div class="col-md-4 col-sm-4">
            <a href="verpacientes.html" class="gtco-item one-row bg-img animate-box" style="background-image: url(images/img_md_1.jpg)">
              <div class="overlay">
                <i class="ti-arrow-top-right"></i>
                <div class="copy">
                  <h3>Ver lista de pacientes</h3>
                  <p>Aquí podrás observar a todos tus paciente.</p>
                </div>
              </div>
              <img src="images/img_md_1.jpg" class="hidden" alt="Free HTML5 Website Template by FreeHTML5.co">
            </a>
          </div>
          <div class="col-md-4 col-sm-4">
            <a href="reporte.html" class="gtco-item two-row bg-img animate-box" style="background-image: url(images/img_3.jpg)">
              <div class="overlay">
                <i class="ti-arrow-top-right"></i>
                <div class="copy">
                  <h3>Ver reporte</h3>
                  <p>Aquí podrás observar los reportes</p>
                </div>
              </div>
              <img src="images/img_3.jpg" class="hidden" alt="Free HTML5 Website Template by FreeHTML5.co">
            </a>

              <a href="RegistrosUsu.jsp" class="gtco-item two-row bg-img animate-box" style="background-image: url(images/img_4.jpg)">
              <div class="overlay">
                <i class="ti-arrow-top-right"></i>
                <div class="copy">
                  <h3>Ver usuarios</h3>
                  <p>Aquí podrás ver todos los usuarios que se han registrado</p>
                </div>
              </div>
              <img src="images/img_4.jpg" class="hidden" alt="Free HTML5 Website Template by FreeHTML5.co">
            </a>
            
          </div>
        </div>
      </div>
    </div>
    <!-- END .gtco-products -->


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