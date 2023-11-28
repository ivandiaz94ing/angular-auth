# Utilizar una imagen base de Node.js
FROM node:18.13.0

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el archivo package.json y package-lock.json
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Instalar las herramientas adicionales necesarias
RUN npm install -g @angular/cli

# Copiar el resto de los archivos de la aplicación
COPY . .

# Exponer el puerto en el que se ejecutará la aplicación
EXPOSE 4200

# Comando para iniciar la aplicación
CMD ["npm", "start"]

