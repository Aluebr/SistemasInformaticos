$file_users=Import-Csv -Path usuarios.csv 
foreach ($user in $file_users) { 
  $clave=ConvertTo-SecureString $user.password -AsPlainText -Force
  New-LocalUser $user.cuenta -Password $clave -FullName $user.nombre_apellido -Description $user.descripcion -AccountNeverExpires  
  net user $user.cuenta /logonpasswordchg:yes
  #AÃ±adimos la cuenta de usuario en el grupo de Usuarios del sistema
  Add-LocalGroupMember -Group $user.departamentos -Member $user.cuenta 
  Add-LocalGroupMember -Group Usuarios -Member $user.cuenta 
}              