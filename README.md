# Roll-On 🎵

Roll-On es una herramienta CLI para descargar canciones, álbumes o discografías desde YouTube Music, ideal para servidores multimedia como Jellyfin o Plex.

## 🚀 Instalación con entorno virtual (venv)

Recomendamos instalar Roll-On usando un entorno virtual para evitar conflictos con otros paquetes del sistema.

### 1. Guía de instalación y entorno virtual para Roll-On
```bash
git clone https://github.com/Cesarx9/Roll-On
cd Roll-On
sudo apt update
sudo apt install -y ffmpeg jp2a opus-tools
python3 -m venv .venv && source .venv/bin/activate
pip install --upgrade pip
pip install -e .
```

Esto instalará Roll-On en modo editable dentro del entorno virtual.

## 📂 Carpeta de descargas

Por defecto, Roll-On descargará la música en:
```
Roll-On/Media/Music
```

## 👩‍💻 Uso
Ejecuta el comando:
```bash
rollon
```
Y sigue las instrucciones en pantalla para seleccionar qué deseas descargar:

1. Canción huérfana
2. Álbum completo
3. Discografía completa
4. Salir

## 📦 Integración con Jellyfin o Plex

Para que Roll-On funcione perfectamente con Jellyfin o Plex:
- Configura `Roll-On/Media/Music` como una carpeta de música en tu servidor.
- Roll-On descargará automáticamente allí, manteniendo tu biblioteca actualizada.

## ⚙️ Requisitos
- Python 3.8+
- `yt-dlp`, `ffmpeg`, `jp2a` y `opus-tools`

## 📄 Licencia
Este proyecto está bajo la licencia MIT.
