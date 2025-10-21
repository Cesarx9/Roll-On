# Roll-On 🎵

Roll-On es una herramienta CLI para descargar canciones, álbumes o discografías desde YouTube Music, ideal para servidores multimedia como Jellyfin o Plex.

## 🚀 Instalación con entorno virtual (venv)

Recomendamos instalar Roll-On usando un entorno virtual para evitar conflictos con otros paquetes del sistema.

### 1. Crear y activar el entorno virtual
```bash
git clone https://github.com/Cesarx9/Roll-On
cd rollon
bash setup.sh
```

Esto instalará Roll-On en modo editable dentro del entorno virtual.

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
- Configura `~/Media/Music` como una carpeta de música en tu servidor.
- Roll-On descargará automáticamente allí, manteniendo tu biblioteca actualizada.

## ⚙️ Requisitos
- Python 3.8+
- `yt-dlp`, `ffmpeg` y dependencias necesarias para manejar audio

## 📄 Licencia
Este proyecto está bajo la licencia MIT.
