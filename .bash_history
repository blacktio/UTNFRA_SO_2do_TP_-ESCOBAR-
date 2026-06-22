sudo apt install git
git clone  https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source  ~/.bashrc  && history -a
mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
git init
sudo fdisk -L
sudo fdisk -l
sudo fdisk /dev/sdc
sudo pvdisplay
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
df -h
swapon --show
mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
nano ~/RTA_Examen_$(date +%Y%m%d)/Punto_A.sh
git config --global user.name "blacktio"
git config --global user.email "alexescobar663@gmail.com"
ls
cd RTA_Examen_20260621
git init
git branch -m main
git remote add origin https://github.com/blacktio/UTNFRA_SO_2do_TP_-ESCOBAR-.git
git add Punto_A.sh
git commit -m "Resolucion punto A"
git push
git push -u origin main
git add .
git commit -m "Punto A resuelto"
ls -la
git remote remove origin
git remote add origin https://github.com
git push -u origin main
git remote remove origin
git remote add origin https://github.com/blacktio/UTNFRA_SO_2do_TP_-ESCOBAR-.git
git push -u origin main
ssh-keygen -t ed25519 -C "tu-correo@ejemplo.com"
cat ~/.ssh/id_ed25519.pub
git remote remove origin
git remote add origin git@github.com:blacktio/UTNFRA_SO_2do_TP_-ESCOBAR-.git
push -u origin main
git push -u origin main
git pull origin main --allow-unrelated-histories
git push -u origin main
git config pull.rebase false
git pull origin main --allow-unrelated-histories --no-edit
git push -u origin main
cd
cat /home/escobar/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo nano /usr/local/bin/EscobarAltaUser-Groups.sh
nano ~/RTA_Examen_20260621/Punto_B.sh
cd /RTA_Examen_20260621
ls
cd /RTA_Examen_20260621
cd ~/RTA_Examen_20260621
git add .
git commit -m "Punto B resuelto"
git push
cd
cd ~/UTN-FRA_SO_Examenes/202406/docker/
docker login -u alescobar1
ls -l
vim index.html 
docker login -u alescobar1
echo -e "FROM nginx:latest\nCOPY index.html /usr/share/nginx/html/index.html" > Dockerfile
docker build -t alescobar1/web1-escobar:latest .
docker push alescobar1/web1-escobar:latest
echo "docker run -d -p 8080:80 alescobar1/web1-escobar:latest" > run.sh
chmod +x run.sh
docker run -d -p 8080:80 alescobar1/web1-escobar:latest
curl http://localhost:8080
exit
cd ~/UTN-FRA_SO_Examenes/202406/docker/
./run.sh
ls -l
nano ~/RTA_Examen_20260621/Punto_C.sh
cd ~/RTA_Examen_20260621
git add .
git commit -m "Punto C resuelto"
git push
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
ls -l
vim playbook.yml
cd roles
ls -l
cd 2do_parcial/
ls -l
cd task
cd tasks
ls -l
vim main.yml 
cd ../templates/
cd /templates/
cd /2doparcial_
cd /2doparcial
cd /2do_parcial
echo -e "Alexis Escobar, 115" > ../templates/template_01.j2
sudo mkdir -p ../templates
echo -e "Alexis Escobar, 115" > ../templates/template_01.j2
echo "Alexis Escobar, 115" | sudo tee ../templates/template_01.j2 > /dev/null
echo -e "IP: {{ ansible_default_ipv4.address }}\nSO: {{ ansible_distribution }}\nCores: {{ ansible_processor_vcpus }}" | sudo tee ../templates/template_02.j2 > /dev/null
vim mai.yml
ls -l
vim mai.yml
vim main.yml
ansible-playbook -i hosts playbook.yml --ask-become-pass
sudo apt install ansible
ansible-playbook -i hosts playbook.yml --ask-become-pass
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
ansible-playbook -i hosts playbook.yml --ask-become-pass
echo -e "[all]\nlocalhost ansible_connection=local" > ~/UTN-FRA_SO_Examenes/202406/ansible/hosts
ansible-playbook -i hosts playbook.yml --ask-become-pass
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
sudo cat /etc/sudoers.d/2psupervisores
tree /tmp/2do_parcial/
sudo apt install tree
tree /tmp/2do_parcial/
nano ~/RTA_Examen_[fecha]/Punto_D.sh
cd RTA_Examen_20260621
cd ~/RTA_Examen_20260621
nano Punto_D.sh
chmod +x Punto_D.sh
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
git add .
git commit -m "Punto D resuelto"
git push
git mv roles/2do_parcial/tasks/mai.yml roles/2do_parcial/tasks/main.yml
cd ~/RTA_Examen_20260621
git add .
git commit -m "Punto D resuelto"
git push
cd
history -a
cd ~/UTNFRA_SO_2do_TP_Escobar
ls -l
cd UTN-FRA_SO_Examenes/
cp -r ~/202406 .
cp -r ~/202406/ .
find ~ -type d -name "202406" 2>/dev/null
cp -r ~/RTA_Examen_20260621 .
cp ~/.bash_history .
tree -L 2
cp ~/.bash_history .
find ~ -type f \( -iname "*alta*" -o -iname "*user*" -o -iname "*escobar*" \) 2>/dev/null
grep -ri "useradd" ~/RTA_Examen_20260621/
tree -a -L 2
rm -rf RTA_Examen_20260621/.git
cat /usr/local/bin/escobarAltaUser-Groups.sh
cd /usr/local/bin
ls -l
cp /usr/local/bin/EscobarAltaUser-Groups.sh ~/UTN-FRA_SO_Examenes/RTA_Examen_20260621/
chmod +x ~/UTN-FRA_SO_Examenes/RTA_Examen_20260621/EscobarAltaUser-Groups.sh
cd
history -a
