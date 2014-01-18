import bottle

#multiples url con una sola funcion
@bottle.route('/')
@bottle.route('/hello/<nombre>')
def saludo(nombre="Mr. Floyd"):
    return bottle.template("Hola {{nombre}}, como estas?", nombre=nombre)

bottle.run(host='localhost', port=8080)
    
    
