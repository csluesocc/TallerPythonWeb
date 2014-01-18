import sys
import re
import datetime

class TallerDAO:
    
    # Contructor de la clase
    def __init__(self, database):
        self.db = database
        self.talleres = database.talleres

    # Metodo para insertar un nuevo taller
    def insertar_taller(self, titulo, tallerista, descripcion, img, fecha, hora):
        print "Insertando taller", titulo
        
        #formateando el link para guardar en db
        exp = re.compile('\W')
        espacios_blancos = re.compile('\s')
        temp_titulo = espacios_blancos.sub('_', titulo)
        link = exp.sub('', temp_titulo)
        
        # formateando la hora
        date = [int(x) for x in fecha.split('-')]
        time = [int(x) for x in hora.split(':')]
        fecha_hora = datetime.datetime(date[0], date[1], date[2], time[0], time[1], time[2])

        # nuevo taller
        taller = {
            "titulo":titulo,
            "tallerista":tallerista,
            "descripcion":descripcion,
            "link": link + "_" + str(date[0])+ str(date[1]) + str(date[2]),
            "img":img,
            "fecha":fecha_hora            
        }
        
        # insertar
        try:
            self.talleres.insert(taller)
            print "Insertando el taller"
        except:
            print "Error al insertar"
            print "Error inesperado:", sys.exc_info()[0]

        return link
        
    # Metodo para obtener los talleres
    def get_talleres(self, num_talleres):
        cursor = self.talleres.find({}, {"tallersita":0, "descripcion":0, "_id":0}).sort('fecha', direction=-1).limit(num_talleres)
        lista_talleres = []
        
        for taller in cursor:
            fecha = taller['fecha'].strftime("%Y-%m-%d")
            hora = taller['fecha'].strftime("%I:%M %p")
            lista_talleres.append({
                "titulo":taller['titulo'],
                "link":taller['link'],
                "img": taller['img'],
                "fecha": fecha,
                "hora": hora
            })
           
        return lista_talleres

    # Metodo para obtener talleres en base a su link
    def get_taller_by_link(self, link, ver):
        taller = self.talleres.find_one({'link':link}, {"_id":0})
        
        if taller is not None:
            fecha = taller['fecha'].strftime("%Y-%m-%d")
            if ver:
                hora = taller['fecha'].strftime("%I:%M %p")
            else:
                hora = taller['fecha'].strftime("%I:%M:%S")
            
            taller['fecha'] = fecha
            taller['hora'] = hora
          
        return taller
        
    
    def update_taller(self, titulo, tallerista, descripcion, img, fecha, hora, link):
        exp = re.compile('\W')
        espacios_blancos = re.compile('\s')
        temp_titulo = espacios_blancos.sub('_', titulo)
        new_link = exp.sub('', temp_titulo)
        
        # formateando la hora
        date = [int(x) for x in fecha.split('-')]
        time = [int(x) for x in hora.split(':')]
        fecha_hora = datetime.datetime(date[0], date[1], date[2], time[0], time[1], time[2])

        # nuevo taller
        update = {"$set":
                  {
                      "titulo":titulo,
                      "tallerista":tallerista,
                      "descripcion":descripcion,
                      "link": new_link + "_" + str(date[0]) + str(date[1]) + str(date[2]),
                      "img":img,
                      "fecha":fecha_hora
                  }
        }
             
        try:
             self.talleres.update({'link':link}, update)
        except:
             print "Error a actualizar taller"
             print "Error inesperado:", sys.exc_info()[0]
             return 0        
   
 
    # Metodo para eliminar taller
    def del_taller(self, link):
        try:
             remove = self.talleres.remove({'link':link})
             return remove
        except:
             print "Error al eliminar"
             print "Error inespeado:", sys.exc_info()[0]
             return 0
        
