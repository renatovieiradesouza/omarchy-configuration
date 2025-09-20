#!/usr/bin/env bash

CONF="$HOME/.config/hypr/hyprlock.conf"
LIST="$HOME/.config/hypr/frases.txt"

# Gera frase aleatória
VERSICULO=$(shuf -n 1 "$LIST")

# Usa sed para substituir a linha placeholder_text, preservando o resto
# Coloca a frase com padding para ficar centralizado
sed -i "s|^\s*placeholder_text =.*|    placeholder_text =   󰒃  $VERSICULO |" "$CONF"
