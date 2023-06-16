#Installing Docker
curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh

#Creating container
sudo docker run -d -p 80:1234 --name py_slim ling69/py_slim

#tage docker
#sudo docker tag py-slim ling69/python:3.9-slim

#connection & permision with dockhub
#sudo docker login -u ling69 -p dckr_pat_EQPoqTNrIv7Hb3nFr4Pg5_yVxOs

#push image to dockhub
#sudo docker push ling69/py-slim:last
