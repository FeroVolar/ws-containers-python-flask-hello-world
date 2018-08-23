# WS Containers Python/Flask Hello World
Very simple Flask app running in container

## Example

### Local build from `Dockerfile`
```shell
docker build -t python-flask-hello-world:latest .
run -d -p 5000:5000 python-flask-hello-world
```

### Remote deploy to WS Containers Cloud (Beta)
```shell
docker login <FQDN>:<PORT>
docker tag <ContainerID> <FQDN>:<PORT>/python-flask-hello-world
docker push <FQDN>:<PORT>/python-flask-hello-world
```
