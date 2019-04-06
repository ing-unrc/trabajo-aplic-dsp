# Actividad práctica

## Uso de herramientas Matlab/Simulink y Git para la integración de asignaturas relacionadas con Procesamiento Digital de Señales y Electrónica de Potencia

## Objetivos de la actividad
- Integrar y complementar los contenidos de asignaturas las carreras Electrónica de Potencia (Ing. Electricista) y Aplicaciones del Procesamiento Digital de Señales (ing. en Telecomunicaciones).
- Participar en una actividad que requiera trabajo en forma colaborativa, usando herramientas de desarrollo y simulación de uso común en la industria y ámbitos académicos.
- Realizar actividades sobre una aplicación práctica.

## Material necesario
- Se requiere una PC con MATLAB y Git instalados, con conexión a internet.
- Archivos de simulación y scripts de ejemplos entregados por la cátedra, que son descargados de este repositorio. 

## Formación y participación de los grupos
- Las actividades se realizarán en forma grupal, con uno a dos participantes por carrera.
- El trabajo deberá realizarse en forma colaborativa virtual, usando Git como medio para compartir los códigos fuentes desarrollados. 
- Las comunicaciones y coordinación de actividades entre los integrantes del grupo podrán realizarse por cualquier medio a elección (por ejemplo, whatsapp, trello proyectos de github, etc.) en el cual deberán ser incorporados los docentes.

## Desarrollo de la actividad práctica

1) Iniciar un proyecto MATLAB/Simulink y descargar el material del repositorio Git. Para esto se recomienda seguir los pasos indicados en el tutorial https://drive.google.com/open?id=1ntKyKeB6-AyjDvuDtP087xRMwXGcmbBp . 

2) Ejecutar el script SinglePhaseInverterData.m y analizar los resultados entregados por la simulación. Analizar el contenido del archivo de Simulink SinglePhaseInverter.slx. El archivo consiste en un convertidor electrónico de potencía que entrega energía a una carga. Indicar:
   1. Tipos de carga a la que está conectado
   2. Tipo de topología del convertidor
   3. Tipos de formas de onda de entrada y salida del convertidor

3) Obtener la FFT de las tesiones y corrientes de la carga, usando variables de punto flotante de 32 bits, considerando los siguientes puntos:
   1. Analizar cómo varía el espectro de las señales al modificar la carga (por ejemplo variando la inductancia o agregando un capacitor)
   2. Analizar el efecto de modificar la frecuencia de muestreo de las señales sobre el espectro obtenido (por ejemplo, usar muestreos menores, iguales o mayores a la frecuencia de conmutación). 
   2. Analizar cómo varía el espectro obtenido al modificar el número de muestras de la FFT.

4) En base a los análisis obtenidos en los puntos anteriores, determinar las características de la FFT óptimas, asumiento que los algoritmos se implementarán en un kit de DSP TMS320C6748 y que es necesario que el espectro obtenido incorpore el efecto de las conmutaciones. 
  
4) Diseñar un algoritmo que busque las magnitudes y las frecuencias de los armónicos medidos con la FFT, para frecuencias de salida del convertidor entre 30 y 70 Hz. 

5) Elaborar un script que genere gráficos de la FFT y que obtenga las magnitudes y frecuencias de los armónicos (a partir del algoritmo obtenido en el punto anterior) para diferentes configuraciones del convertidor y de la carga.
 
## Reporte
Para conluir la actividad, se deben realizar tres tipos de entregas: 
- Debe actualizarse el repositorio de GitHub con las versión final del proyecto elaborado. 
- Elaborar un reporte técnico sobre todas las actividades realizadas, identificando: 
  - Cómo se ha realizado la división de tareas
  - Los resultados principales obtenidos a lo largo del desarrollo de las actividades
  - Las conclusiones obtenidas en cada etapa
- Presentación oral, de 10 minutos máximos de duración, usando preferentemente medios visuales, donde se resuman las conclusiones y resultadso obtenidos.
