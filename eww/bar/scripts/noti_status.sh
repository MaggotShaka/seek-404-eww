#!/bin/bash

# Obtener el número de notificaciones en el historial
count=$(dunstctl history | grep -c "id" || echo 0)

# Obtener el estado de "No molestar" (true/false)
is_paused=$(dunstctl is-paused)

if [ "$1" == "count" ]; then
  echo "$count"
elif [ "$1" == "status" ]; then
  echo "$is_paused"
fi
