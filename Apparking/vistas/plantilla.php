<?php

session_start();

?>

<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Bienvenidos - Apparking</title>

  <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name='viewport' />

  

 

   <!--=====================================
  PLUGINS DE CSS
  ======================================-->

  <!--CSS LOGIN-->
  <link rel="stylesheet" href="css/estilosLogin.css">

  <!--FUENTES-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Bree+Serif&family=Protest+Guerrilla&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="vistas/modulos/template/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="vistas/modulos/template/vendors/base/vendor.bundle.base.css">

  <link rel="stylesheet" href="vistas/modulos/template/css/style.css">

  <link rel="shortcut icon" href="vistas/modulos/template/images/favicon.png" />
  
  




</head>

<!--=====================================
CUERPO DOCUMENTO
======================================-->

<body class="hold-transition skin-blue sidebar-collapse sidebar-mini login-page">
 
  <?php

if(isset($_SESSION["iniciarSesion"]) && $_SESSION["iniciarSesion"] == "ok"){

  echo '<div class="wrapper">';

   /*=============================================
   CABEZOTE
   =============================================*/

   /*=============================================
   MENU
   =============================================*/


   /*=============================================
   CONTENIDO
   =============================================*/

   if(isset($_GET["ruta"])){

     if($_GET["ruta"] == "inicio" ||
        $_GET["ruta"] == "login" ||
        $_GET["ruta"] == "salir"){

       include "modulos/".$_GET["ruta"].".php";
      }
      elseif($_GET["ruta"] == "prueba"){
          include "modulos/carpetaprueba/".$_GET["ruta"].".php";
      }
   }
   else{

    include "modulos/404.php";

  }

   /*=============================================
   FOOTER
   =============================================*/


   echo '</div>';

 }else{

   include "modulos/login.php";

 }

 ?>




 <!-- plugins:js -->
 <script src="vistas/modulos/template/vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="vistas/modulos/template/vendors/chart.js/Chart.min.js"></script>
  <script src="vistas/modulos/template/js/jquery.cookie.js" type="text/javascript"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="vistas/modulos/template/js/off-canvas.js"></script>
  <script src="vistas/modulos/template/js/hoverable-collapse.js"></script>
  <script src="vistas/modulos/template/js/template.js"></script>
  <script src="vistas/modulos/template/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="vistas/modulos/template/js/dashboard.js"></script>
  <!-- End custom js for this page-->

</body>
</html>
