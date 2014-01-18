import bottle
import sys

@bottle.route('/')
def index():
	return "Pagina inicial"

#Filtar un entero en la url ejem: /41
@bottle.route('/<num:int>')
def powInt(num):
    if isinstance(num, int):
        return str(num*num)
    
#Filtar un string en la url con formato de email: /csluesocc@ues.com
@bottle.route('/<email:re:([\w\-\.]+@(\w[\w\-]+\.)+[\w\-]+)>')
def mostrarEmail(email):
    return "Tu email es: ", email

#Filtrar cualquier tipo de direccion: /cualquier/ruta/que/desees/filtrar
@bottle.route('/<path:path>')
def path(path):
    return "Tu direccion es: ", path

bottle.run(host='localhost', port=8080)
