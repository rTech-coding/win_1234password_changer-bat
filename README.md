# 🔑 Script para Cambiar Contraseña en Windows

Este documento contiene el script de Batch diseñado para automatizar el cambio de contraseña del usuario actual en el sistema operativo Windows.

## 💻 Código del Script

Puedes copiar y pegar el siguiente bloque directamente en un archivo con extensión `.bat` (por ejemplo, `cambiar_clave.bat`):

```batch
@echo off
:: Extrae el nombre real del usuario logueado en Windows
for /f "tokens=2 delims=\" %%a in ('whoami') do set REALUSER=%%a

:: Cambia la contraseña usando la variable corregida
net user "%REALUSER%" 1234
cls

echo La contrasena de %REALUSER% se ha cambiado a 1234.
pause
exit
```

## ⚙️ Explicación del Funcionamiento

*   **`@echo off`**: 🙈 Oculta la ejecución de los comandos en la consola para mostrar una interfaz más limpia.
*   **`for /f ...`**: 🔍 Ejecuta el comando `whoami` (que devuelve `DOMINIO\USUARIO`) y filtra el texto usando la barra invertida (`\`) como separador para extraer únicamente el nombre del usuario actual, guardándolo en la variable `%REALUSER%`.
*   **`net user "%REALUSER%" 1234`**: 🔐 Modifica la contraseña del usuario almacenado en la variable, asignándole el valor `1234`.
*   **`cls`**: 🧹 Limpia la pantalla de la consola.
*   **`echo` y `pause`**: 📢 Muestran un mensaje de confirmación en pantalla y detienen la ejecución hasta que el usuario presione una tecla.

> ⚠️ **Requisito Importante:** Para que este script funcione correctamente, debe ejecutarse haciendo clic derecho sobre el archivo `.bat` y seleccionando **"Ejecutar como administrador"** 🛡️. De lo contrario, el comando `net user` devolverá un error de "Acceso denegado".
 ## Creado por rTech
