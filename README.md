# reset-pc-baja-actividad-cpu #
Este script comprueba el porcentaje de uso de la CPU y si durante una hora el uso no supera en ningun momento el 3%, reinicia el sistema.

# Ejecutar en modo manual #

Abre una terminal CMD con permisos de administrador, sitúate en la ruta donde has guardado el script y ejecuta el comando: \
  reset-pc-baja-actividad-cpu.cmd

# Ejecutar en modo automatico #

Para automatizarlo, utiliza el programador de tareas de Windows creando una tarea con la siguiente configuración:

Pestaña General: \
  Nombre: el que quieras \
  Descripción: la que quieras \
  Al ejecutar la tarea, usar esta cuenta de usuario: asigna un usuario con permisos de administrador \
  Ejecutar tanto si el usuario inició sesión como si no.

Pestaña Desencadenador: \
  Nueva \
  Inicia la tarea: Al iniciar el sistema

Pestaña Acciones: \
  Nueva \
  Inicia un programa \
  Programa o script: unidad:\ruta del script\reset-pc-baja-actividad-cpu.cmd

Pestaña configuración: \
  Desmarcar “Detener la tarea si se ejecuta durante más de:”

Aceptar
