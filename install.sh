#!/bin/bash

# Actualizar el sistema y instalar dependencias
echo "Actualizando el sistema..."
sudo apt update && sudo apt upgrade -y
echo "Instalando dependencias..."
sudo apt install libvlc-dev libvlccore-dev git cmake -y

# Verificar si RImusic ya está clonado
if [ ! -d "RImusic" ]; then
    echo "Clonando RImusic..."
    git clone https://github.com/asier20078/asier2007.git RImusic
else
    echo "RImusic ya está clonado. Actualizando..."
    cd RImusic
    git pull origin main  # Actualiza a la última versión
    cd ..
fi


# Compilar RImusic
cd ~/asier2007/RImusic
mkdir build
cd build

cmake ..
make

echo "RImusic instalado. Puedes ejecutarlo con ./RImusic"
