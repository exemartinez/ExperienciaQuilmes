<!DOCTYPE html>
<html lang="en" ng-app="quilmesApp">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Experiencia Quilmes</title>

    <!-- Bootstrap -->
    <link href="./bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
      body{
          background: url('./img/portada.png') no-repeat center center fixed;
          -webkit-background-size: cover;
          -moz-background-size: cover;
          -o-background-size: cover;
          background-size: 100% auto;
          margin-top: 12%;
      }

      #bg{
          background:url('./img/portada.png') no-repeat center center;
          height: 500px;
      }

    </style>
    <script src="./bower_components/jquery/dist/jquery.min.js"></script>
    <script src="./bower_components/angular/angular.min.js"></script>
    <script src="./bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="./bower_components/ngUpload/ng-upload.js"></script>

    <!-- This is the backend code. -->
    <script src="./js/app.js"></script>

</head>

<body>

  <div id="main_page" >



    <div id="ingresoCodigo" align="center">

      <a href="./ingresaCodigo.html"><img id="imgImagen" src="./img/portada1.png" height="100%" width="100%"></img> <a/> <br/>

    </div>


  </div>

</body>
</html>
