<div class="row">
	% if len(talleres)>0:
	% for taller in talleres:
	   <div class="col-sm-6 col-md-4">
	     <div class="thumbnail">
	       <img src="{{taller['img']}}" width="300" height="200" alt="{{taller['titulo']}}">
	       <div class="caption">
		 <h4 class="text-center">{{taller['titulo']}}</h4>
		 <p class="text-center">
			<span class="glyphicon glyphicon-calendar"></span>&nbsp;{{taller['fecha']}} &nbsp;
			<span class="glyphicon glyphicon-time"></span>&nbsp;{{taller['hora']}}
		 </p>
		 <p class="text-center">
		   <a href="/talleres/{{taller['link']}}" class="btn btn-info btn-sm" role="button">Ver</a>
		   <a href="/editar/{{taller['link']}}" class="btn btn-primary btn-sm" role="button">Editar</a>
		   <a href="/eliminar/{{taller['link']}}" class="btn btn-danger btn-sm" role="button">Eliminar</a>
		 </p>
	       </div>
	     </div>
	   </div>
	% end
	% else:
	  <div class="col-sm-12 col-md-12">
	    <h2 class="text-info text-center">
	      <span class="glyphicon glyphicon-info-sign"></span>&nbsp; 
	      Actualmente no hay talleres disponibles, ingrese un taller nuevo.
	    </h2>
	  </div>
	% end
      </div>
