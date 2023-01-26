#!/bin/bash
#Quitamos los permisos de others.
setfacl -R -m o:0 /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/ &&
#Damos permisos recursivamente y de herencia para el departamento de Sistemas de Información.
setfacl -R -m g:SI_dep:rwx /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/ &&
setfacl -R -m d:g:SI_dep:rwx /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/ &&
#Damos permisos de lectura al departamento de desarrollo para que puedan leer los pdf con
#información de los proyectos.
setfacl -R -m g:des_dep:r /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/ &&
setfacl -R -m d:g:des_dep:r /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/ &&
#Permisos de ejecución del departamento de desarrollo para poder entrar en la carpeta principal
setfacl -m g:des_dep:rx /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/ &&
#Permisos recursivos y de herencia en la carpeta src para el departamento de desarrollo
setfacl -R -m g:des_dep:rwx /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/src/ &&
setfacl -R -m d:g:des_dep:rwx /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/src/ &&
#Permisos de lectura para los pdf con información, para el departamento de explotación.
setfacl -R -m g:exp_dep:r /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/ &&
setfacl -R -m d:g:exp_dep:r /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/ &&
#Permisos para abrir la carpeta principal para el departamento de explotación.
setfacl -m g:exp_dep:rx /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/ &&
#Permisos recursivos y herencia de lectura y ejecución de la carpeta src para
#el departamento de explotación.
setfacl -R -m g:exp_dep:rx /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/src &&
setfacl -R -m d:g:exp_dep:rx /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/src &&
#Permisos totales recusivamente y de herencia para la carpeta pruebas para el departamento
#de explotación
setfacl -R -m g:exp_dep:rwx /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/pruebas &&
setfacl -R -m d:g:exp_dep:rwx /mnt/6d134feb-7db2-4a12-a11c-f4dd09c485ce/proyectos/pruebas