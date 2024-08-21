#quick kill the containers. 
if [ "$CONTAINER_ENGINE" == "docker" ]; then
    docker rm -f $(docker ps -q)
else
    podman rm -fa
fi