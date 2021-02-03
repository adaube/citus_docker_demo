# Why should I use this?
- You want to recreate a database quickly.

# Install dependencies
1. docker

```
sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt install docker-ce docker-ce-cli containerd.io -y
sudo groupadd docker
sudo usermod -aG docker $USER
```

2. Build docker image
`./build.sh`
4. Start the cluster
`./start.sh`
5. Stop the cluster
`./stop.sh`