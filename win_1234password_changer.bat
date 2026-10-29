@echo off
:: Extrae el nombre real del usuario logueado en Windows
for /f "tokens=2 delims=\" %%a in ('whoami') do set REALUSER=%%a

:: Cambia la contraseña usando la variable corregida
net user "%REALUSER%" 1234
cls

echo La contrasena de %REALUSER% se ha cambiado a 1234.
pause
exit
