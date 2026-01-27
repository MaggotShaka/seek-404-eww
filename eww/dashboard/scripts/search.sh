#!/bin/bash

QUERY=$1

# Si no hay texto, limpiamos y salimos
if [ -z "$QUERY" ]; then
    eww -c ~/.config/eww/dashboard update search_query=""
    eww -c ~/.config/eww/dashboard update search_results=""
    exit 0
fi

# Actualizamos la query para que se vea en el input
eww -c ~/.config/eww/dashboard update search_query="$QUERY"

# Buscamos coincidencias
RESULTS=$(fdfind -i "$QUERY" /home/shaka /usr/share/applications --max-results 10)

# Construimos el código Yuck
YUCK_CODE='(box :orientation "v" :space-evenly false :spacing 10'
while IFS= read -r line; do
    FILENAME=$(basename "$line")

# Elegimos un icono según la extensión (opcional pero elegante)
ICON="󰈚" # Icono de archivo por defecto
[[ "$line" == *".svg"* || "$line" == *".png"* ]] && ICON="󰏆"
[[ "$line" == *".desktop"* ]] && ICON="󰀻"

YUCK_CODE+=" (button :class 'search-result-item' :onclick 'xdg-open \"$line\" & eww -c ~/.config/eww/dashboard close dashboard' 
                (box :orientation 'h' :space-evenly false :spacing 10
                  (label :class 'result-icon' :text '$ICON') 
                  (label :class 'result-text' :text '$FILENAME' :halign 'start')))"
# ... resto del script ...
done <<< "$RESULTS"
YUCK_CODE+=')'

# ENVIAMOS EL RESULTADO A EWW
eww -c ~/.config/eww/dashboard update search_results="$YUCK_CODE"
