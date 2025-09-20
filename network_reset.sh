#!/bin/bash

# Desativar a interface
echo "Desativando interface de rede enp0s31f6"
sudo ip link set enp0s31f6 down

for i in $(seq 1 5); do
  echo -n "."
  sleep 1
done
echo "done"

# Ativar a interface novamente
echo "Ativando interface de rede enp0s31f6"
sudo ip link set enp0s31f6 up

for i in $(seq 1 5); do
  echo -n "."
  sleep 1
done
echo "done"

