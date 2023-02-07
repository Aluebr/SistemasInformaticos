@echo off

REM Grupos

net localgroup alumnos /add
net localgroup profesores /add
net localgroup Publico_R /add
net localgroup DAM1_F /add
net localgroup DAM1_R /add
net localgroup BACH1_F /add
net localgroup BACH1_R /add
net localgroup BACH2_F /add
net localgroup BACH2_R /add
net localgroup ESO1_F /add
net localgroup ESO1_R /add
net localgroup ESO2_F /add
net localgroup ESO2_R /add
net localgroup ESO3_F /add
net localgroup ESO3_R /add
net localgroup ESO4_F /add
net localgroup ESO4_R /add

REM Usuarios


net user alumnado hola01 /add
net user profesorado hola01 /add
net user administrador hola01 /add
net user 1DAM hola01 /add
net user 1BACH hola01 /add
net user 2BACH hola01 /add
net user 1ESO hola01 /add
net user 2ESO hola01 /add
net user 3ESO hola01 /add
net user 4ESO hola01 /add


REM Asignar grupos

net localgroup alumnos alumnado /add
net localgroup profesores profesorado /add
net localgroup administradores administrador /add
net localgroup DAM1_F 1DAM /add

net localgroup administradores 1DAM /add
net localgroup BACH1_F 1BACH /add
net localgroup BACH1_R 2BACH /add
net localgroup BACH2_F 2BACH /add
net localgroup BACH2_R 1BACH /add
net localgroup ESO1_F 1ESO /add
net localgroup ESO1_R 2ESO /add
net localgroup ESO1_R 3ESO /add
net localgroup ESO1_R 4ESO /add
net localgroup ESO2_F 2ESO /add
net localgroup ESO2_R 1ESO /add
net localgroup ESO2_R 3ESO /add
net localgroup ESO2_R 4ESO /add
net localgroup ESO3_F 3ESO /add
net localgroup ESO3_R 1ESO /add
net localgroup ESO3_R 2ESO /add
net localgroup ESO3_R 4ESO /add
net localgroup ESO4_F 4ESO /add
net localgroup ESO4_R 1ESO /add
net localgroup ESO4_R 2ESO /add
net localgroup ESO4_R 3ESO /add

net localgroup Publico_R 1DAM /add
net localgroup Publico_R 1BACH /add
net localgroup Publico_R 2BACH /add
net localgroup Publico_R 1ESO /add
net localgroup Publico_R 2ESO /add
net localgroup Publico_R 3ESO /add
net localgroup Publico_R 4ESO /add

exit