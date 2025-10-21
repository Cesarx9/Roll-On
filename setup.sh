#!/bin/bash

# Instalar dependencias del sistema
sudo apt update
sudo apt install -y ffmpeg jp2a opus-tools

# Crear entorno virtual
python3 -m venv .venv
source .venv/bin/activate

# Actualizar pip e instalar dependencias Python
pip install --upgrade pip
pip install -e .
