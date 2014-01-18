import bottle
import pymongo
import cgi
import re
from model import talleresDAO

#servir la pagina de error cuando se accede a una pagina que no existe en el server
@bottle.error(404)
def error404(error):	
    bottle.response.status = 303
    bottle.response.headers['location'] = '/page_not_found'

#mostrando la pagina de error personalizada
@bottle.get('/page_not_found')
def page_not_found():
    return bottle.template('error_template')

#sirviendo archivos estaticos como css, js, imagenes, etc
@bottle.route('/static/<path:path>')
def static_files(path):
    return bottle.static_file(path, root="static")

#pagina de inicio
@bottle.route('/')
def talleres_app():
    #obteniendo los talleres de la base de datos
    Talleres = talleres.get_talleres(9)    
    return bottle.template('index',talleres=Talleres)

#pagina que muestra toda la info de un taller
@bottle.get('/talleres/<link>')
def mostrar_taller(link='notfound'):
    #obtener un taller en base a su link
    Taller = talleres.get_taller_by_link(link, ver="ver")
    #Taller['descripcion'] = cgi.escape(Taller['descripcion'], quote=True)
    return bottle.template('ver_taller', taller=Taller, error="")

#Peticion post con los datos para registrar un nuevo taller en la db
@bottle.post('/nuevo_taller')
def nuevo_taller():
    #obteniendo datos del formulario que hizo la peticion post
    #Nota: ver la documentacion para posibles alternativas de hacer esto
    titulo = bottle.request.forms.get('titulo')
    tallerista = bottle.request.forms.get('tallerista')
    descripcion = bottle.request.forms.get('descripcion')
    img = bottle.request.forms.get('img')
    fecha = bottle.request.forms.get('fecha')
    hora = bottle.request.forms.get('hora')
    
    #si hacen falta datos enviar al usuario a un nuevo formulario para que llene todos los campos requeridos
    if titulo == "" or tallerista == "" or fecha == "" or hora == "":
        Error = "Los campos: titulo, tallerista, fecha y hora son requeridos!"
        return bottle.template('nuevo_taller', dict(Titulo=cgi.escape(titulo, quote=True)), Tallerista=tallerista,
                               Descripcion=cgi.escape(descripcion, quote=True), Img=img, Fecha=fecha, Hora=hora, error=Error)
    
        # escapar caracteres < >
    escaped_desc = cgi.escape(descripcion, quote=True)
    
    # sustituir saltos de linea por <br>
    nueva_linea = re.compile('\r?\n')
    descripcion_formateado = nueva_linea.sub('<br>', escaped_desc)
    
    #insertar datos en db
    talleres.insertar_taller(titulo, tallerista, descripcion_formateado, img, fecha, hora)
    
    #redireccionar a la pagina principal
    bottle.redirect('/')
    

#servir el formulario de edicion
@bottle.get('/editar/<link>')
def editar_taller(link="notfound"):
    Taller = talleres.get_taller_by_link(link, '')
    return bottle.template('editar_taller', taller=Taller, error="")


#Actualizar registros
@bottle.post('/update')
def actualizar_taller():
    titulo = bottle.request.forms.get('titulo')
    tallerista = bottle.request.forms.get('tallerista')
    descripcion = bottle.request.forms.get('descripcion')
    img = bottle.request.forms.get('img')
    fecha = bottle.request.forms.get('fecha')
    hora = bottle.request.forms.get('hora')
    link = bottle.request.forms.get('link')
    
    if titulo == "" or tallerista == "" or fecha == "" or hora == "":
        Taller = {
            "titulo": cgi.escape(titulo, quote=True),
            "tallerista": tallerista,
            "descripcion": descripcion,
            "img": img,
            "fecha":fecha,
            "hora":hora,
            "link":link
        }
        Error = "Los campos: titulo, tallerista, fecha y hora son requeridos!"
        return bottle.template('editar_taller', taller=Taller, error=Error)
    
    # Nota: estas lineas comentadas lo que hacen es escapar html, pero ocasionan que se distorsione
    # los datos que seran guardados, recomiendo probar con el codigo hasta obtener los resultados deseados
    # escapar caracteres < >
    #escaped_desc = cgi.escape(descripcion, quote=True)
    
    # sustituir saltos de linea por <br>
    #nueva_linea = re.compile('\r?\n')
    #descripcion_formateado = nueva_linea.sub('<br>', escaped_desc)
    
    #Actualizar datos en db
    talleres.update_taller(titulo, tallerista, descripcion, img, fecha, hora, link)
    
    #luego de actualizar redireccionar al index
    bottle.redirect('/')

#elimiar un registro en base a su link
@bottle.get('/eliminar/<link>')
def eliminar_taller(link="notfound"):
    talleres.del_taller(link)
    bottle.redirect('/')


#Estableciendo conexion a mongodb
#Nota: leer la documentacion de pymongo: http://api.mongodb.org/python/current/api/pymongo/mongo_client.html
connection = pymongo.MongoClient("mongodb://localhost")
#seleccionando la base de datos
database = connection.taller_app
#instanciando la clase del modelo
talleres = talleresDAO.TallerDAO(database)

#iniciar servidor en el puerto 8080
bottle.debug(True)
bottle.run(host="localhost", port=8080)

