# Usa una imagen base que incluya Node.js y npm
FROM node:latest

RUN npm install -g http-server

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Expone el puerto 8080 (o el puerto que desees)
EXPOSE 8080

# Ejecuta el comando para iniciar el servidor HTTP en el puerto deseado
CMD ["npm", "run", "serve"]