<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="GNU, libre, software, python, bottle, CSLUESOCC">
    <meta name="author" content="Carlos Carcamo">
    <title>{{taller['titulo']}} | CSLUESOCC</title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../static/css/jumbotron-narrow.css" rel="stylesheet"/>
    <link href="../static/css/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
    <script type="text/javascript" src="../static/js/jquery.min.js"></script>
    <script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../static/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript" src="../static/js/funciones.js"></script>
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
        <p class="lead">{{!taller['descripcion']}}
       	</p>
      </div>
      
      <div class="row">
      	   <div class="col-sm-12 col-xs-12">      	   
	     <div class="row">
      	     	  <div class="col-sm-6">	   	
	   	   <img src="{{taller['img']}}" class="img-thumbnail img-responsive" alt="{{taller['titulo']}}" />
	     	  </div>
	   	  <div class="col-sm-6 col-xs-12">
	   	   	<h1 class="text-center">{{taller['titulo']}}</h1>
		  	<h3 class="text-center">
		    	<span class="glyphicon glyphicon-calendar"></span>&nbsp;{{taller['fecha']}} &nbsp;
		    	<span class="glyphicon glyphicon-time"></span>&nbsp;{{taller['hora']}}
	       		</h3>
			<br>				
			
			<h4 class="text-center">Impartido por:&nbsp; {{taller['tallerista']}}</h4>
			
		 	
	    	  </div>		
	      </div>
	   </div>
      </div>
      <hr>      
      <footer>
        <p>&copy; CSLUESOcc 2014</p>
      </footer>
    </div><!--fin container-->    
  </body>
</html>
