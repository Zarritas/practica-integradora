# Importa una imagen base de MySQL
FROM mysql:latest
LABEL authors="zarritas"

# Establece las variables de entorno para MySQL
ENV MYSQL_ROOT_PASSWORD=admin

# Copiar el script para crear la base de datos de prueba
COPY script.sql /docker-entrypoint-initdb.d/