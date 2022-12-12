#Politicas de conseña:
#Longitud de carácteres = 8
#Cambio de contraseña entre 5 y 30 días
#Bloqueo después de intentos erroneos = 3
#El bloqueo dura = 120 minutos
#Recordar las últimas contraseñas = 5

net accounts /lockoutthreshold: 3

net accounts /lockoutduration: 120

net accounts /lockoutwindow:120

net accounts /maxpwage:30

net accounts /minpwage:5

net accounts /minpwlen:8

net accounts /uniquepw:5

net accounts 

secedit /export /cfg c:\secpol.cfg
(GC C:\secpol.cfg) -Replace "PasswordComplexity = 0","PasswordComplexity = 1" | Out-File C:\secpol.cfg
secedit /configure /db c:\windows\security\local.sdb /cfg c:\secpol.cfg /areas SECURITYPOLICY
Remove-Item C:\secpol.cfg -Force


