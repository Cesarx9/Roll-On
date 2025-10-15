
# Roll-On 🎵

Roll-On es una herramienta CLI para descargar canciones, álbumes o discografías desde YouTube Music, ideal para servidores multimedia como Jellyfin o Plex.

## Instalación con `pipx`

Recomendamos instalar Roll-On usando `pipx` para evitar problemas con entornos virtuales o permisos del sistema.

### 1. Instalar `pipx`
```bash
sudo apt update
sudo apt install pipx
pipx ensurepath
```

### 2. Instalar Roll-On
```bash
cd /ruta/a/Roll-On
pipx install .
```

Esto instalará Roll-On como una herramienta global accesible desde cualquier lugar.

## 📂 Carpeta de descargas

Por defecto, Roll-On descargará la música en:
```
~/Media/Music
```

Asegúrate de que esta carpeta exista y tenga permisos de escritura:
```bash
mkdir -p ~/Media/Music
```

Puedes configurar esta carpeta en el archivo `.env` si deseas cambiarla:
```env
ROLLON_DOWNLOAD_DIR=/ruta/personalizada
```

## 🧑‍💻 Uso
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
- Configura `~/Media/Music` como una carpeta de música en tu servidor.
- Roll-On descargará automáticamente allí, manteniendo tu biblioteca actualizada.

## 🛠️ Requisitos
- Python 3.8+
- `yt-dlp`, `ffmpeg` y dependencias necesarias para manejar audio

## 📄 Licencia
Este proyecto está bajo la licencia MIT.
