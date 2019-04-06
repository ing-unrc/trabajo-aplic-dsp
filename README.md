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

## Desarrollo de las actividades prácticas

1) Iniciar un proyecto MATLAB/Simulink y descargar el material del repositorio Git. Para esto se recomienda seguir los pasos indicados en el tutorial https://drive.google.com/open?id=1ntKyKeB6-AyjDvuDtP087xRMwXGcmbBp . 

2) Ejecutar el script SinglePhaseInverterData.m y analizar los resultados entregados por la simulación. Analizar el contenido del archivo de Simulink SinglePhaseInverter.slx. El archivo consiste en un convertidor electrónico de potencía que entrega energía a una carga. Indicar:
  a) Tipos de carga a la que está conectado. 
  b) Tipo de topología del convertidor
  b) Formas de onda de entrad y salida

3) Obtener la FFT usando variables de punto flotante, funto fijo en 16 bits y punto fijo en 8 bits, para frecuencas de muetreo de 10 veces la frec de conmutación e igual a la frec de conmutación, comparar
- diseñar un filtro FIR discreto que extraiga la fundamental de la señal de tensión, de orden 32
- obtener la FFT para la señal filtrada
- las operaciones se deben hacer mediante diferentes scripts de matlab a partir de los resultados de simulación
- la simulación y los resultados se deben generar automáticamente ejecutando un script de MATLAB, las figuras obtenidas deben guardarse en una carpeta del proyecto.


