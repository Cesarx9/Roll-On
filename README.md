# Roll-On 🎵

Roll-On es una herramienta CLI para descargar canciones, álbumes o discografías desde YouTube Music, ideal para servidores multimedia como Jellyfin o Plex.

## 🐳 Instalación con Docker

Recomendamos instalar y ejecutar Roll-On usando Docker para facilitar el despliegue y evitar conflictos con dependencias del sistema.

### 1. Construir la imagen Docker
```bash
docker build -t rollon .
```

### 2. Ejecutar el contenedor
```bash
docker run --rm -it -v Media/Music:Media/Music rollon
```

Esto descargará la música directamente en tu carpeta local `Media/Music`.
Para cambiar la ruta de descarga edita la linea 17 del archivo Dockerfile

## 🧱 Uso con Docker Compose

También puedes usar Docker Compose para una configuración más sencilla:

### 1. Ejecutar con Docker Compose
```bash
docker-compose up --build
```

Esto iniciará el contenedor en modo interactivo y montará la carpeta `Media/Music` como destino de descargas.

## 📂 Carpeta de descargas

Por defecto, Roll-On descargará la música en:
```
Media/Music
```
Para cambiar la ruta de descarga edita la linea 8 del archivo docker-compose.yml
Asegúrate de que esta carpeta exista y tenga permisos de escritura:
```bash
mkdir -p Media/Music
```

## 👩‍💻 Uso
Ejecuta el comando dentro del contenedor:
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
- Configura `Media/Music` como una carpeta de música en tu servidor.
- Roll-On descargará automáticamente allí, manteniendo tu biblioteca actualizada.

## ⚙️ Requisitos
- Docker
- Docker Compose (opcional)

## 📄 Licencia
Este proyecto está bajo la licencia MIT.
