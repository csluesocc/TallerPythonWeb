import bottle

#pagina no encontrada
@bottle.error(404)
def error404(error):
    #caputar el estado 303, usado para redireccionar de forma correcta
    bottle.response.status = 303
    #redireccionar a la pagina de error personalizada
    bottle.response.headers['location'] = '/page_not_found'


#sirviendo la pagina de error personalizada
@bottle.route('/page_not_found')
def page_not_found():
    return bottle.template('error_template')
   

#para servir archivos estaticos como css, js, imagenes, etc
@bottle.route('/static/<path:path>')
def serve_static(path):
    return bottle.static_file(path, root='static')
    
#index del sitio
@bottle.route('/')
def index():
    return bottle.template('index')


bottle.debug(True)
bottle.run(host='localhost', port=8080)
