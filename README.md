# how to setup
1. install prereqs: docker

`sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common`

`curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`

`sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"`

`sudo apt-get install docker-ce docker-ce-cli containerd.io`

`sudo groupadd docker`

`sudo usermod -aG docker $USER`

2. install prereqs: docker-compose

`sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose`

# how to use

`./build` build your docker image
`./start.sh` start the cluster
`./stop.sh` stop the cluster

