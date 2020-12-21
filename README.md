## Docker Vanilla ML

This repository is binded to DockerHub to create a vanilla environment with cuda, openssh-server and anaconda installed.

The docker-compose file is as bellow:
```
version: '2.3'

services:
 vanilla:
  runtime: nvidia
  image: jcadic/vanilla
  container_name: jcadic-vanilla
  ports:
    - "2222:22"
  volumes:
    - "/mnt:/mnt"
    - "/srv:/srv"
  command: tail -F anything

```

To launch the container simply run:
```
docker-compose up -d
```
