#!/bin/bash
# Solucion Punto A

sudo pvcreate /dev/sdc1 /dev/sdd1

sudo vgcreate vg_datos /dev/sdd1
sudo vgcreate vg_temp /dev/sdc1


sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp


sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap


sudo systemctl stop docker
sudo mount /dev/vg_datos/lv_docker /var/lib/docker/
sudo systemctl start docker

sudo mkdir -p /work/
sudo mount /dev/vg_datos/lv_workareas /work/
sudo swapon /dev/vg_temp/lv_swap
