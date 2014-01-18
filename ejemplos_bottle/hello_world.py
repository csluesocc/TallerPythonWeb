#from bottle import route, run
import bottle 

@bottle.route('/hello')
def hello():
    return "Hola Mundo!\n"

#iniciar el servidor
bottle.run(host='localhost', port=8080)
