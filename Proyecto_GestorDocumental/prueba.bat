@echo off
md E:\Publico

icacls E:\Publico /inheritance:d /T
icacls E:\Publico /remove:g Usuarios /T
icacls E:\Publico /remove:g "Usuarios autentificados" /T

icacls E:\Publico /GRANT Publico_R:(R)


md E:\Publico\1ESO E:\Publico\2ESO E:\Publico\3ESO E:\Publico\4ESO E:\Publico\1BACH E:\Publico\2BACH E:\Publico\1DAM   

icacls E:\Publico\1ESO /GRANT ESO1_F:(OI)(CI)(F) /T
icacls E:\Publico\1ESO /GRANT ESO1_R:(OI)(CI)(R) /T
icacls E:\Publico\2ESO /GRANT ESO2_F:(OI)(CI)(F) /T
icacls E:\Publico\2ESO /GRANT ESO2_R:(OI)(CI)(R) /T
icacls E:\Publico\3ESO /GRANT ESO3_F:(OI)(CI)(F) /T
icacls E:\Publico\3ESO /GRANT ESO3_R:(OI)(CI)(R) /T
icacls E:\Publico\4ESO /GRANT ESO4_F:(OI)(CI)(F) /T
icacls E:\Publico\4ESO /GRANT ESO4_R:(OI)(CI)(R) /T

icacls E:\Publico\1BACH /GRANT BACH1_F:(OI)(CI)(F) /T
icacls E:\Publico\1BACH /GRANT BACH1_R:(OI)(CI)(R) /T
icacls E:\Publico\2BACH /GRANT BACH2_F:(OI)(CI)(F) /T
icacls E:\Publico\2BACH /GRANT BACH2_R:(OI)(CI)(R) /T

icacls E:\Publico\1DAM /GRANT DAM1_F:(OI)(CI)(F) /T
icacls E:\Publico\1DAM /GRANT DAM1_R:(OI)(CI)(R) /T

exit
