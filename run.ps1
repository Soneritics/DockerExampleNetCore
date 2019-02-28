docker run -d -p 8081:443 --name ExampleApp exampleapp

docker ps
docker top ExampleApp

$ContainerIP=(docker inspect -f "{{ .NetworkSettings.Networks.bridge.IPAddress }}" ExampleApp)

echo "IP: $ContainerIP"
start-process "chrome" "http://$ContainerIP"
