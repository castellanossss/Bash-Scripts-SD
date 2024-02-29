#!/bin/bash

# Actualizar la lista de paquetes disponibles
sudo apt update

# Instalar curl (Herramienta de linea de comandos para transferir datos desde o hacia un servidor utilizando protocolos como HTTP o HTTPS)
sudo apt-get install -y curl

# Instalar NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Cargar NVM e Instalar Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Instalar Node.js version 20.11.1
nvm install 20.11.1
nvm use 20.11.1

# Verificar la instalacion
node -v
npm -v

# Clonar el repositorio del backend de nuestro Web Service
git clone https://github.com/castellanossss/Web-Service-Backend-SD

# Entrar a la carpeta
cd Web-Service-Backend-SD

# Instalar las dependencias
npm install

# Ejecutar el servidor
npm start
