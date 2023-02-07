REM Grupos
net localgroup alumnos /delete
net localgroup profesores /delete
net localgroup Publico_R /delete
net localgroup DAM1_F /delete
net localgroup DAM1_R /delete
net localgroup BACH1_F /delete
net localgroup BACH1_R /delete
net localgroup BACH2_F /delete
net localgroup BACH2_R /delete
net localgroup ESO1_F /delete
net localgroup ESO1_R /delete
net localgroup ESO2_F /delete
net localgroup ESO2_R /delete
net localgroup ESO3_F /delete
net localgroup ESO3_R /delete
net localgroup ESO4_F /delete
net localgroup ESO4_R /delete

REM Usuarios


net user alumnado /delete
net user profesorado /delete
net user administrador /delete
net user 1DAM /delete
net user 1BACH /delete
net user 2BACH /delete
net user 1ESO /delete
net user 2ESO /delete
net user 3ESO /delete
net user 4ESO /delete

exit