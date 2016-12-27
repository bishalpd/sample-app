docker ps -f status=exited -q | xargs -r docker rm
docker images -f dangling=true -q | xargs -r docker rmi
