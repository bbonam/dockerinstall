# dockerinstall
#verify git installed or not
git --version
#if not installed please execute below
sudo apt install git
#Install Docker
git clone https://github.com/bbonam/dockerinstall.git
cd dockerinstall
#Execute below
sh docker_install.sh
#Test Installation
sudo docker run hello-world
sudo docker ps
