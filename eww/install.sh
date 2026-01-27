#!/bin/bash

# --- Fusión seek-404: Script de Instalación ---
echo "Iniciando la reconstrucción de la fusión seek-404..."

# 1. Actualizar repositorios
sudo apt update

# 2. Firmware y Drivers (Vital para el Pentium G630)
sudo apt install -y firmware-linux firmware-misc-nonfree

# 3. Base del Entorno y Terminal
sudo apt install -y hyprland kitty git curl wget build-essential

# 4. Audio y Control de Hardware (Pipewire puro)
sudo apt install -y pipewire pipewire-pulse wireplumber pavucontrol pamixer brightnessctl playerctl

# 5. Herramientas de Interfaz y Lógica (El alma de seek-404)
# Incluimos jq y socat que son los motores de tus scripts de EWW
sudo apt install -y eww jq socat sass

# 6. Utilidades de Sistema y Archivos
sudo apt install -y nemo network-manager-gnome udisks2 xdg-desktop-portal-hyprland polkit-kde-agent-1

# 7. Fuentes y Estética (Para que no fallen los iconos)
sudo apt install -y fonts-jetbrains-mono fonts-nerd-font-symbols-common fonts-font-awesome fonts-noto-color-emoji

# 8. Capturas de Pantalla y Notificaciones
sudo apt install -y grim slurp swappy dunst libnotify-bin

# 9. Herramientas de búsqueda y extras de terminal
sudo apt install -y fd-find fastfetch btop unzip 7zip

# 10. Ajustes de permisos finales
sudo usermod -aG video,input $USER

echo "Instalación de base completada. Recuerda instalar qView, GIMP y OnlyOffice manualmente."
echo "Fusión seek-404 lista para clonar el repositorio."
