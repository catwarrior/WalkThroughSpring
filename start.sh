#!/bin/sh
#alias di="docker_compose_exec() { docker-compose exec $1 bash }"
#alias dc="docker-compose"
#alias debugcas="docker-compose exec cas bash -c \"npm run clean && npm run build:debug && node --debug=5858 build\""
sudo sed -i -e 's/192.168.189.200/10.100.13.52/g' /etc/hosts
#sudo echo 's/192.168.189.200/10.100.13.52/g' >> /etc/default/docker
sudo mkdir -p /etc/docker/certs.d/registry:5100;
sudo cp domain.crt /etc/docker/certs.d/registry:5100/ca.crt;
sudo service docker restart;
