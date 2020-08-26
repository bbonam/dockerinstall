echo "Uninstall old versions"

sudo apt-get remove docker docker-engine docker.io containerd runc


echo "SETTING UP THE REPOSITORY"

sudo apt-get update  -y

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y


echo "Adding Docker’s official GPG key"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


sudo apt-key fingerprint 0EBFCD88

echo "Adding Repository"

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   

echo "INSTALL DOCKER ENGINE"


sudo apt-get install docker-ce docker-ce-cli containerd.io -y


echo "Docker Version"

 docker version
