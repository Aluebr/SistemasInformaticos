@echo off
cls
title Titulo de la aplicacion
echo "Bienvenido %USERNAME%"   %DATE% ^| %TIME%
color 09
REM http://www.patorjk.com/software/taag/

echo "      ___      ________ __          _ "
echo "      | \ \    / /  ____| |        (_)" 
echo "      | |\ \  / /| |__  | |__  _ __ _ "
echo "  _   | | \ \/ / |  __| | '_ \| '__| |"
echo " | |__| |  \  /  | |____| |_) | |  | |"
echo "  \____/    \/   |______|_.__/|_|  |_|"
                                     
                                      

::##############
:: MENU GRÁFICO
::##############
:: Cómo hacer un menú
:: https://www.sevenforums.com/tutorials/78083-batch-files-create-menu-execute-commands.html

:menu
REM cls
echo ++++++++++++++++++++++++++++++++++++++++++++
echo +    Programa de Jose Vicente Ebri         +
echo +             Gestor Documental            +
echo ++++++++++++++++++++++++++++++++++++++++++++
echo.
echo Selecciona la opcion deseada
echo ----------------------------
echo.
echo 1. Creacion Usuarios y Grupos.
echo 2. Creacion Gestor Documental.
echo 3. Borrado Gestor Documental.
echo 4. Ocultar Usuarios de Inicio
echo 5. Borrado Usuarios y Grupos.
echo 6. Establecer horario.
echo S. Salir de la aplicacion.


:: Aquí creamos el menú de selección.

set /p opcionMenu=Selecciona la opcion (1, 2, 3, 4, 5, 6 o S) y pulsa ENTER:
if %opcionMenu%==1 goto opcion1
if %opcionMenu%==2 goto opcion2
if %opcionMenu%==3 goto opcion3
if %opcionMenu%==4 goto opcion4
if %opcionMenu%==5 goto opcion5
if %opcionMenu%==6 goto opcion6
if %opcionMenu%==S goto fin
:: Si no se pulsa ninguna de las opciones, volvemos al menú
echo "Pulsa una opcion valida"
pause >null

:: ###########################
:: ZONA DE ETIQUETAS/FUNCIONES
:: ###########################
:opcion6
  ECHO "Has pulsado 6"
  start C:\Users\jvebri\Desktop\SetTime.bat
  pause
  goto menu
:opcion5
  ECHO "Has pulsado 5"
  start C:\Users\jvebri\Desktop\DeleteUsersGroups.bat
  pause
  goto menu
:opcion4
  ECHO "Has pulsado 4"
  start C:\Users\jvebri\Desktop\Ocultar.bat
  pause
  goto menu
:opcion3
  echo "Has pulsado 3"
  echo "Se va a borrar el siguiente directorio:"
  rd E:\Publico /s
  pause 
  goto menu
:opcion2
  echo "Has pulsado 2"
  start C:\Users\jvebri\Desktop\prueba.bat
  pause
  goto menu
:opcion1
  echo "Has pulsado 1"
  start C:\Users\jvebri\Desktop\UsersGroups.bat 
  pause
  goto menu
:fin
echo "Nos vamos de la App......."