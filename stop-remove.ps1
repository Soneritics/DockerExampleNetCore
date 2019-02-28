$DockerId=(docker inspect -f "{{ .Id }}" ExampleApp)

docker stop ExampleApp
docker rm $DockerId
docker ps
