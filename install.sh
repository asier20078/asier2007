#!/bin/bash

# Actualizar el sistema y instalar dependencias
echo "Actualizando el sistema..."
sudo apt update && sudo apt upgrade -y
echo "Instalando dependencias..."
sudo apt install libvlc-dev libvlccore-dev git cmake -y

# Clonar el repositorio de RImusic (reemplaza la URL con la correcta)
echo "Clonando RImusic..."
git clone https://github.com/asier20078/asier2007.git

# Compilar RImusic
cd RImusic/build
cmake ..
make

echo "RImusic instalado. Puedes ejecutarlo con ./RImusic"
