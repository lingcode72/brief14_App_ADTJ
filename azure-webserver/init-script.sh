
#Installing Docker
curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh

#Creating container
sudo docker run -d -p 80:1234 --name py_slim ling69/py_slim
