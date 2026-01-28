# 🔍 Seek-404-EWW
> A collection of minimal, ultra-lightweight EWW widgets designed for performance and aesthetics. 

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-Linux-blue.svg)](https://www.kernel.org)
[![Tested on](https://img.shields.io/badge/Tested%20on-Pentium%20II-orange.svg)]()

This repository contains my personal EWW (ElKowar's Wacky Widgets) configuration, optimized to run on low-resource hardware without sacrificing a modern look.

---

## 📦 Widgets Incluidos

### 📻 YTMusik
Un reproductor de audio minimalista que utiliza `mpv` y `yt-dlp`.
- **Búsqueda directa:** Encuentra cualquier canción escribiendo su nombre.
- **Soporte de Links:** Pega URLs de YouTube o Mixes directamente.
- **Control de procesos:** Gestión automática para evitar múltiples instancias de audio.
- **Atajos:** - `Click Izquierdo`: Abrir buscador.
  - `Click Derecho`: Detener música (`pkill mpv`).

### 📅 Minimal Bar & Clock
Barra de estado optimizada con reloj, fecha y centro de notificaciones integrado.

---

## 🛠️ Instalación y Dependencias

Para que todos los scripts y widgets funcionen correctamente (especialmente el audio), instala las siguientes herramientas:

```bash
# Dependencias principales
sudo apt update && sudo apt install eww mpv yt-dlp ffmpeg python3 -y
