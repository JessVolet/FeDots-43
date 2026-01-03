#!/bin/bash

# 1. Instalar Oh My Posh
mkdir -p ~/.local/bin
echo "Instalando ohmyposh..."
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin

# 2. Crear enlaces simbólicos (Corregidos)
# Usamos $(pwd) para obtener la ruta completa de donde estás parado ahora
echo "Creando enlaces simbolicos..."

# Eliminamos los links rotos anteriores primero
rm -f ~/.bashrc ~/.omp.json

# Creamos los nuevos apuntando a los archivos de esta carpeta
ln -sf "$(pwd)/.bashrc" ~/.bashrc
ln -sf "$(pwd)/.omp.json" ~/.omp.json

echo "¡Fedorita Style instalado! Reinicia la terminal o haz: source ~/.bashrc"
