docker ps --all -aq | xargs docker rm -v --force
docker images --no-trunc | grep '<none>' | awk '{ print $3 }' | xargs -r docker rmi --force
