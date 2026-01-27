#!/bin/bash

get_icon() {
  case "$(echo "$1" | tr '[:upper:]' '[:lower:]')" in
  *whatsapp*) echo "" ;;
  *office* | *onlyoffice*) echo "󰏆" ;;
  *chrome* | *brave* | *firefox*) echo "󰈹" ;;
  *system* | *debian*) echo "󰚗" ;;
  *) echo "󰵚" ;;
  esac
}

# Generamos código literal para EWW
echo "(box :orientation 'v' :spacing 15"
dunstctl history | jq -r '.data[0] | .[] | (.appname.data) + "|" + (.summary.data) + "|" + (.body.data)' | while read -r line; do
  APP=$(echo "$line" | cut -d'|' -f1)
  SUM=$(echo "$line" | cut -d'|' -f2)
  BOD=$(echo "$line" | cut -d'|' -f3)
  ICON=$(get_icon "$APP")

  # Creamos una fila con dos columnas: Icono (35px) y Texto (el resto)
  echo "  (box :class 'noti-item' :orientation 'h' :space-evenly false :spacing 15"
  echo "    (label :class 'noti-icon-lg' :text '$ICON')"
  echo "    (box :orientation 'v' :space-evenly false"
  echo "      (label :class 'noti-title' :text '$SUM' :halign 'start' :wrap true)"
  echo "      (label :class 'noti-body' :text '$BOD' :halign 'start' :wrap true)"
  echo "    )"
  echo "  )"
done | head -n 40 # Suficientes líneas para el box y labels
echo ")"
