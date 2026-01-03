#!/bin/bash

# 1. Instalar Oh My Posh (binario local para no pedir sudo si no es necesario)
mkdir -p ~/.local/bin


echo "Instalando ohmyposh"
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin

# 2. Crear enlaces simbólicos (Symlinks)
# Esto hace que el ~/.bashrc real apunte a tu archivo del repo

echo "Creando enlaces simbolicos"
ln -sf ~/dots/.bashrc ~/.bashrc
ln -sf ~/dots/.omp.json ~/.omp.json

echo "¡Fedorita Style instalado! Reinicia la terminal o haz: source ~/.bashrc"
