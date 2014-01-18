[Comunidad de Software Libre UESOcc](https://www.facebook.com/groups/csluesfmocc)
=================================================================================

##Taller python en la web (Bottle framework)
######Codigo fuente del taller python en la web

######Autor: Carlos Eduardo Cárcamo
######Video: http://www.youtube.com/watch?v=7i6k2IoVvdo

Lenguajes 
---------
- Python
- Javascript

Frameworks y librerias utilizados
---------
- Bottle.py
- pymongo
- Twitter Bootstrap
- jQuery

Base de Datos
---------

- mongodb

Contenido
---------
- ejemplos_bottle/ --> ejemplos basicos del uso del framework bottle
- talleres_app/ --> Aplicación web del taller

#INSTRUCCIONES


Instalación del framework bottle
---------
Nota: para usar bottle se necesita tener instalado: python >= 2.5 
existen varias maneras de hacerlo, listamos un par de ellas:

1. `$wget http://bottlepy.org/bottle.py`
2. `$ sudo pip install bottle # recomendado`

  Antes necesitamos tener instalado el paquete: python-pip
  
  `$ sudo apt-get install python-pip`
  
  `$ sudo pip install bottle`
  
3. `$ sudo easy_install bottle # alternativa a pip`

  Antes necesitamos tener instalado el paquete: python-setuptools 
  
  `$ sudo apt-get install python-setuptools`
  
  `$ sudo apt-get install bottle` 

4. `$ sudo apt-get install python-bottle # funciona en debian y derivados`

Instalación de mongodb:
---------
Ver la documentación oficia:

http://docs.mongodb.org/manual/installation/

Instalación de pymongo
---------
Referencia: http://api.mongodb.org/python/current/installation.html

`$easy_install pymongo`

Importando la base de datos a mongoDB
---------
Asegurarse de tener mongo correctamente instalado y corriendo

`$mongoimport -d taller_app -c talleres talleres_collection.json`

Ejecutar la aplicacion de ejemplo (talleres_app)
---------
- Ir al directorio de la app

  `$ cd talleres_app`

- Ejecutar el script (talleres_app.y)

  `$ python talleres_app.py`
  
- Abrir tu navegador favorito y escribir en la barra de direcciones:

  http://localhost:8080/
