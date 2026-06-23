#!/bin/bash
# Comandos reales ejecutados para el Punto D


sudo apt install tree -y

vim main-yml
cd ~/UTN-FRA_SO_Examenes/202406/ansible/


echo "Alexis Escobar, 115" | sudo tee roles/2do_parcial/templates/template_01.j2 > /dev/null
echo -e "IP: {{ ansible_default_ipv4.address }}\nSO: {{ ansible_distribution }}\nCores: {{ ansible_processor_vcpus }}" | sudo tee roles/2do_parcial/templates/template_02.j2 > /dev/null


ansible-playbook -i hosts playbook.yml --ask-become-pass
