docker ps --filter status=dead --filter status=exited -aq | xargs docker rm -v
docker images --no-trunc | grep '<none>' | awk '{ print $3 }' | xargs -r docker rmi
