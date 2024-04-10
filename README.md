# Pruebas de práctica integradora de proyecto de clase
> [!IMPORTANT]
> - Se requiere tener instalado ***docker, docker-compose y npm***
> 
> - (De momento) Solo se puede desplegar en _sistema operativo linux_
## Redes:
> ### Prueba
> Driver: bridge
> 
> subnet: 172.19.0.0/16

## Contenedores:
> ### MySQL
> Red: prueba
> 
> Ipv4: 172.19.0.3
> 
> Imagen: [Dockerfile](mysql/Dockerfile)
>  - Utiliza la imagen mysql:latest
>  - Añadimos el script para crear el esquema de la base de datos
>  - Ejecutamos el script
>  - Expone el puerto 3306
>  - deja corrinedo el servicio de mysql
> 
> Variables:
>  - MYSQL_ROOT_PASSWORD : admin

> ### Tomact
> Red: prueba
> 
> Ipv4: 172.19.0.2
> 
> Imagen: tomcat:latest
> 
> Volumen: ./backend/build/libs:/usr/local/tomcat/webapps

> ### Node.js
> Red: prueba
> 
> Ipv4: 172.19.0.4
> 
> Imagen: [Dockerfile](frontend/Dockerfile)
>  - Utiliza la imagen node:latest
>  - instala http-server
>  - Establece el directorio de trabajo
>  - copia los archivos de package*.json al directorio de trabajo
>  - instala las dependencias
>  - Expone el puerto 3306
>  - Ejecuta e comando para dejar el servidor en funcionamiento
> 
> Volumen: (./frontend):/app

## Pasos a seguir
1. Clonamos el repositorio
3. Dentro de la carpeta de [frontend](frontend/) abrimos un terminal y ejecutamos el comando npm install
4. En la carpeta [raiz](./) abrimos un terminal y ejecutamos docker-compose up --build
5. Una vez todos los contenedores estén iniciados entramos en [backend](backend/) y ejecutamos ./gradlew bootwar
6. Listo al acceder a 172.19.0.4 ya deberiamos poder llegar a los datos
