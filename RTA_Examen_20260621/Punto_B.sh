#!/bin/bash
# Solucion Punto B - Bash Scripting

USUARIO_CLAVE="escobar"
LISTA="/home/escobar/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt"

# Obtener la clave 
CLAVE=$(sudo grep "^${USUARIO_CLAVE}:" /etc/shadow | cut -d: -f2)

# Guardar IFS y cambiarlo para leer línea por línea
ANT_IFS=$IFS
IFS=$'\n'

for LINEA in $(cat $LISTA | grep -v ^#)
do
    # Extraer los datos con awk usando el separador ','
    USUARIO=$(echo $LINEA | awk -F ',' '{print $1}')
    GRUPO=$(echo $LINEA | awk -F ',' '{print $2}')
    HOME_DIR=$(echo $LINEA | awk -F ',' '{print $3}')

    # Crear grupo y usuario 
    sudo groupadd $GRUPO
    sudo useradd -m -s /bin/bash -g $GRUPO -d $HOME_DIR -p "$CLAVE" $USUARIO
done

# Restaurar IFS
IFS=$ANT_IFS
