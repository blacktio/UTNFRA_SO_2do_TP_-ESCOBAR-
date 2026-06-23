#!/bin/bash
# Solucion Punto C - Docker Completo
cd ~/UTN-FRA_SO_Examenes/202406/docker/
vim index.html

echo -e "FROM nginx:latest\nCOPY index.html /usr/share/nginx/html/index.html" > Dockerfile


docker build -t alescobar1/web1-escobar:latest .
docker push alescobar1/web1-escobar:latest

