<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="GNU, libre, software, python, bottle, CSLUESOCC">
    <meta name="author" content="Carlos Carcamo">
    <title>Talleres app | CSLUESOCC</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="static/css/jumbotron-narrow.css" rel="stylesheet"/>
    <link href="static/css/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
    <script type="text/javascript" src="static/js/jquery.min.js"></script>
    <script type="text/javascript" src="static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="static/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript" src="static/js/funciones.js"></script>
  </head>
  
  <body>
    
    <div class="container">
      <div class="header">
        <ul class="nav nav-pills pull-right">
          <li class="active"><a href="/"><span class="glyphicon glyphicon-home"></span>&nbsp; Inicio</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Blog</a></li>
        </ul>
        <h3 class="text-muted">Comunidad de Software Libre UESOcc</h3>
      </div>
      
      <div class="page-header">
        <h1>Taller - python en la web</h1>
        <p class="lead">Taller de programacion web con python usando el micro framework bottle. Bottle es un web-framework WSGI bastante sencillo y ligero que permite crear aplicaciones web de manera rapida.
        <p><button class="btn btn-lg btn-success" id="showModal">
	    <span class="glyphicon glyphicon-plus"></span>&nbsp; Nuevo Taller
	  </button>
	</p>
      </div>

      <!--talleres
			Nota: ver documentacion en linea http://bottlepy.org/docs/dev/stpl.html#simpletemplate-syntax
	   -->
      % include talleres.tpl talleres=talleres                 

      <!--fin talleres-->
      <hr>

      <!--incluyendo el modal -->
      % include modal.tpl 
      
      
      <footer>
        <p>&copy; CSLUESOcc 2014</p>
      </footer>
    </div><!--fin container-->    
  </body>
</html>

