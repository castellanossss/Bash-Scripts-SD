#!/bin/bash

# Actualizar la lista de paquetes disponibles
sudo apt-get update

# Instalar curl (Herramienta de linea de comandos para transferir datos desde o hacia un servidor utilizando protocolos como HTTP o HTTPS)
sudo apt-get install -y curl

# Instalar Node.js
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

# Clonar el repositorio del backend de nuestro Web Service
git clone https://github.com/castellanossss/Web-Service-Backend-SD

# Entrar a la carpeta
cd Web-Service-Backend-SD

# Instalar las dependencias
npm install

# Ejecutar el servidor
npm start
