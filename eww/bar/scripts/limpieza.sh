#!/bin/bash

# Colores para que se vea genial en tu terminal
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color

clear
echo -e "${CYAN}==========================================${NC}"
echo -e "${CYAN}   SISTEMA DE MANTENIMIENTO FUSIÓN       ${NC}"
echo -e "${CYAN}==========================================${NC}"
echo ""

# Solicitar sudo al inicio para no interrumpir después
echo -e "${YELLOW}󰀨 Se requieren permisos de administrador...${NC}"
if sudo -v; then
  echo -e "${GREEN}✔ Autenticado correctamente${NC}\n"
else
  echo -e "${RED}✘ Error de autenticación${NC}"
  exit 1
fi

# 1. APT - Limpieza de paquetes
echo -e "${YELLOW}󰇚 Limpiando caché de paquetes y huérfanos...${NC}"
sudo apt update && sudo apt autoremove -y && sudo apt autoclean

# 2. Logs - Journald
echo -e "\n${YELLOW}󱂅 Reduciendo logs del sistema a 2 días...${NC}"
sudo journalctl --vacuum-time=2d

# 3. Caché de usuario
echo -e "\n${YELLOW}󰃢 Limpiando caché temporal del usuario...${NC}"
# Limpiamos thumbnails y logs de aplicaciones comunes
rm -rf ~/.cache/thumbnails/*
rm -rf ~/.cache/fontconfig/*

echo -e "\n${GREEN}✨ ¡Mantenimiento finalizado con éxito! ✨${NC}"
echo -e "${CYAN}==========================================${NC}"
echo -e "${YELLOW}Presiona [ENTER] para volver al escritorio...${NC}"
read
