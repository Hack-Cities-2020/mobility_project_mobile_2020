# Hackfellas bus control system

(Agregar esta sección en el caso de que el proyecto este compuesto por varios repositorios)
## Repo:  mobility_project_mobile_2020
Esta aplicación permite el registro del dato cuando un bus pasa sobre una parada o punto de control, y de sta forma ayudar a gener una base de datos, se conecta a un servicio web expuesto en forma de **API REST**, utilizando sus distintos endpoints para la consulta de recursos disponibles. Todos estos recursos son mostrados en una aplicación móvil.

## Inicio
En la pantalla inicial es posible visualizar de forma ordenada y clara la siguiente información:
  - La información del bus.
  - La posición y velocidad actual mediente la captura de coordenadas, estas coordenadas son registradas para realizar su seguimiento en tiempo real.
  - Un panel informativo mostrando la distancia y tiempo respecto a los buses posteriores y anteriores.

### Rutas
Las rutas se componen de un conjunto de puntos georeferenciados que corresponden con el camino que uno o varios
vehículos seguirán para cumplir el servicio de transporte público. 
  - Ver un listado con las rutas dispobiles de los buses.
  - Visualizar una ruta selecciona sobre un mapa.
  - Visualizar aquellas rutas que esten asignadas a una ruta en específico.
  - Visualizar aquellos puntos de control fijo o móviles, que esten asignados a una ruta en específico.
  
### Buses
  - La app permite ver una lista de buses, y su información generica.

### Notificaciones
  - La app permite visualzar las notificaciones asignadas al chfer, bus, ruta, en general.
  - La app permite registras un incidente y notificar a la central de buses.
  
## Motivación
Una breve descripción de la motivación detrás del proyecto.
Responder lo siguiente: ¿por qué existe el proyecto? ¿Qué problema soluciona el proyecto?

## Capturas de pantalla
Incluir logos o capturas de pantalla de las interfaces mas relevantes del proyecto.

## Tecnologías/Frameworks utilizados
Esta aplicación fue desarrollada utilizando el Framework Flutter basado en el lenguaje de programación Dart.
Tiene conexion a una base de datos en tiempo real con Firebase.
Tiene conexion a una base de datos de información.

## Funcionalidades mas importantes
Responder: ¿Cuáles son las funcionalidades mas interesantes de tu proyecto?

## Instalación
Proveer de una guía paso a paso con ejemplos sobre como obtener un ambiente de desarrollo corriendo con el presente repositorio. 
En el caso de tener varios repositorios, realizar la guía correspondiente para cada uno.

## Creditos
Nombrar a los participantes del equipo. Mencionar alguna libreria que fue útil o sirvió de inspiración para prototipar el proyecto. 

## Licencia

The MIT License

Copyright (c) 2020 [Hackfellas]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
