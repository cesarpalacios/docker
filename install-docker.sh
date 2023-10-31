#Actualizacion de paquetes locales
sudo apt-get update

#Instalacion de paquetes
sudo apt-get upgrade -y

#Instalamos ca-certificates curl gnupg
sudo apt-get install ca-certificates curl gnupg -y

#instalamos con permisos
sudo install -m 0755 -d /etc/apt/keyrings

#Descargamos las llaves de instalacion
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

#Damos permisos a las llaves
sudo chmod a+r /etc/apt/keyrings/docker.gpg

#Agregamos el repositorio de docker
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#Actualizamos paquetes
sudo apt-get update

#Instalamos Docker y Docker-CLI
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

#Ejecutamos hola mundo docker 
sudo docker run hello-world

