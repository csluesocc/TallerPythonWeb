<!-- Modal -->
      <div class="modal fade" id="newTaller" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
	  <div class="modal-content">
	    <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title" id="myModalLabel">Nuevo taller</h4>
	    </div>
	    <div class="modal-body">

	      <!--formulario -->
	      <form action="/nuevo_taller" method="post" class="form-horizontal" role="form" name="tallerForm" id="tallerForm">
		<fieldset>		
		  <!-- Text input-->
		  <div class="form-group">
		    <label class="col-sm-2 control-label" for="titulo">Ttitulo</label>
		    <div class="col-sm-10 controls">
		      <input id="titulo" name="titulo" type="text" placeholder="Titulo" class="form-control" required="">
		    </div>
		  </div>
		  
		  <!-- Text input-->
		  <div class="form-group">
		    <label class="col-sm-2 control-label" for="tallerista">Tallerista</label>
		    <div class="controls col-sm-10">
		      <input id="tallerista" name="tallerista" type="text" 
			     placeholder="Tallerista" class="form-control" required="">		      
		    </div>
		  </div>
		  
		  <!-- Textarea -->
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="descripcion">Descripción</label>
		    <div class="controls col-sm-10">                     
		      <textarea id="descripcion" name="descripcion" class="form-control" rows="3" 
				placeholder="Detalles del taller..." ></textarea>
		    </div>
		  </div>
		  
		  <!-- Text input-->
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="img">Imagen</label>
		    <div class="controls col-sm-10">
		      <input id="img" name="img" type="text" placeholder="http://url.com/imagen.png" 
			     class="form-control" required="">		     
		    </div>
		  </div>
		  
		  <!-- Text input-->
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="fecha">Fecha</label>
		    <div class="controls col-sm-10" id="datePicker">
		      <div class="row">
			<div class="col-sm-10">
			  <input id="fecha" name="fecha" type="text" placeholder="2014-01-16" 
				 class="form-control" data-format="yyyy-MM-dd" required="" readonly>
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
				 class="form-control" data-format="hh:mm:ss" required="" readonly>		      
			</div>
			<div class="col-sm-1">
			    <span class="add-on glyphicon glyphicon-time btn btn-default"></span>
			<div>
		      </div>
		    </div>
		  </div>
		</fieldset>
		
	      </form>      <!-- fin formulario -->        	      
	      
	      
	    </div><!--modal-body-->
	    <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>              
	      <button type="button" class="btn btn-primary" id="formSubmit">Guardar</button>
 	    </div>
	  </div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
      </div><!-- /.modal -->