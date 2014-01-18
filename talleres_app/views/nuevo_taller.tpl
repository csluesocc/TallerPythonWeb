<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="GNU, libre, software, python, bottle, CSLUESOCC">
    <meta name="author" content="Carlos Carcamo">
    <title>Nuevo Taller | CSLUESOCC</title>
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
      
      <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
      	     <span class="glyphicon glyphicon-exclamation-sign"></span> <strong>Error!</strong> {{error}}
      </div>
    
      <div>
	<!--formulario -->
	<form action="/nuevo_taller" method="post" class="form-horizontal" role="form" name="tallerForm" id="tallerForm">
	  <fieldset>		
	    <!-- Text input-->
	    <div class="form-group">
	      <label class="col-sm-2 control-label" for="titulo">Ttitulo</label>
	      <div class="col-sm-10 controls">
		<input id="titulo" name="titulo" type="text" placeholder="Titulo" 
		       class="form-control" required="" value="{{Titulo}}">
	      </div>
	    </div>
		  
	    <!-- Text input-->
	    <div class="form-group">
	      <label class="col-sm-2 control-label" for="tallerista">Tallerista</label>
	      <div class="controls col-sm-10">
		<input id="tallerista" name="tallerista" type="text" 
		       placeholder="Tallerista" class="form-control" required="" value="{{Tallerista}}">		      
	      </div>
	    </div>
		  
	    <!-- Textarea -->
	    <div class="form-group">
	      <label class="control-label col-sm-2" for="descripcion">Descripción</label>
	      <div class="controls col-sm-10">                     
		<textarea id="descripcion" name="descripcion" class="form-control" rows="3" 
			  placeholder="Detalles del taller..." >{{Descripcion}}</textarea>
	      </div>
	    </div>
		  
	    <!-- Text input-->
	    <div class="form-group">
	      <label class="control-label col-sm-2" for="img">Imagen</label>
	      <div class="controls col-sm-10">
		<input id="img" name="img" type="text" placeholder="http://url.com/imagen.png" 
		       class="form-control" required="" value="{{Img}}">		     
	      </div>
	    </div>
		  
	    <!-- Text input-->
	    <div class="form-group">
	      <label class="control-label col-sm-2" for="fecha">Fecha</label>
	      <div class="controls col-sm-10" id="datePicker">
		<div class="row">
		  <div class="col-sm-10">
		    <input id="fecha" name="fecha" type="text" placeholder="2014-01-16" 
			   class="form-control" data-format="yyyy-MM-dd" required="" value="{{Fecha}}" readonly>
		  </div> 
		  <div class="col-sm-1">			 
		    <span class="add-on glyphicon glyphicon-calendar btn btn-default"></span>			  
		  </div>
		</div>		    
	      </div>
	    </div>
	    
	    <!-- Text input-->
	    <div class="form-group">
	      <label class="control-label col-sm-2" for="hora">Hora</label>
	      <div class="controls col-sm-10 input-append" id="timePicker">
		<div class="row">
		  <div class="col-sm-10">
		    <input id="hora" name="hora" type="text" placeholder="20:30:00" 
			   class="form-control" data-format="hh:mm:ss" required="" value="{{Hora}}" readonly>		      
		  </div>
		  <div class="col-sm-1">
		    <span class="add-on glyphicon glyphicon-time btn btn-default"></span>
		    <div>
		    </div>
		  </div>
		</div>
	  </fieldset>
	  <div class="form-group">
	    <div class="col-sm-offset-4 col-sm-4">
	      <button type="submit" class="btn btn-primary btn-lg btn-block" id="formSubmit">Guardar</button>
	    </div>
	  </div>  
	</form>
	<!-- fin formulario -->
	
	</div>
      <hr>
      
      <footer>
        <p>&copy; CSLUESOcc 2014</p>
      </footer>
    </div><!--fin container-->    
  </body>
</html>
