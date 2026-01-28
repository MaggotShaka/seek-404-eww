# 🔍 Seek-404-EWW
> Una colección de widgets para EWW minimalistas y ultra ligeros, diseñados para el rendimiento y la estética.

[![Licencia: MIT](https://img.shields.io/badge/Licencia-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Plataforma](https://img.shields.io/badge/Plataforma-Linux-blue.svg)](https://www.kernel.org)
[![Probado en](https://img.shields.io/badge/Probado%20en-Pentium%20II-orange.svg)]()

Este repositorio contiene mi configuración personal de EWW (ElKowar's Wacky Widgets), optimizada para funcionar en hardware de bajos recursos sin sacrificar un aspecto moderno. Probado y verificado en **Debian Sid**.

---

## 📦 Widgets Incluidos

### 📻 YTMusik
Un reproductor de audio minimalista potenciado por `mpv` y `yt-dlp`.
- **Búsqueda Inteligente:** Encuentra cualquier canción por nombre.
- **Enlaces Directos:** Pega URLs de YouTube o Mixes directamente.
- **Gestión de Procesos:** Mata automáticamente instancias anteriores para ahorrar CPU.
- **Atajos:** - `Click Izquierdo`: Abrir el buscador.
  - `Click Derecho`: Detener la música instantáneamente (`pkill mpv`).

### 📅 Barra Minimalista y Reloj
Barra de estado elegante con integración de fecha, hora y centro de notificaciones.

### 💡 Controles de Hardware
Sliders integrados para Brillo y Volumen utilizando backends ligeros.

---

## 🛠️ Instalación Completa y Dependencias

Para asegurar que todos los scripts, audio y controles de hardware funcionen perfectamente, instala las siguientes dependencias:

### 1. Paquetes Base (Audio, Video y Notificaciones)
```bash
sudo apt update && sudo apt install eww mpv yt-dlp ffmpeg dunst libnotify-bin python3 -y
```

### 2. Control de Hardware (Brillo y Mezclador de Audio)
```bash
sudo apt install brightnessctl pulsemixer alsa-utils -y
```
### 3. Fuentes (Crucial para los Iconos)

Los widgets utilizan Nerd Fonts para mostrar los iconos correctamente.
    Recomendada: JetBrainsMono Nerd Font


🚀 Configuración e Instalación

Instalación del Repositorio
### 1. Clonar el repo
```bash
git clone [https://github.com/MaggotShaka/Seek-404-EWW](https://github.com/MaggotShaka/Seek-404-EWW) ~/.config/eww/Seek404
```
### 2. Permisos de Ejecución: Otorga permisos a todos los scripts:
```bash
find ~/.config/eww -name "*.py" -exec chmod +x {} +
find ~/.config/eww -name "*.sh" -exec chmod +x {} +
```
Configuración de Servicios
### 1. Dunst (Notificaciones):
```bash
mkdir -p ~/.config/dunst
cp ~/.config/eww/Seek404/config/dunstrc ~/.config/dunst/dunstrc
killall dunst; dunst &
```
### 2. Permisos de Brillo: Añade tu usuario al grupo video para que brightnessctl funcione sin sudo:
```bash
sudo usermod -aG video $USER
```
(Cierra sesión y vuelve a entrar para que los cambios surtan efecto).


🎨 Estética
    Tema: Paleta oscura Nord/Deep Sea de alto contraste.
    Rendimiento: Diseñado para consumir ~0.1% de CPU en reposo sobre hardware antiguo.
    Filosofía: "Menos es más, pero lo suficiente es suficiente".

🤝 Créditos
Creado por Shaka.

Si este proyecto te ayuda a darle vida a una PC vieja, ¡considera darle una ⭐!
