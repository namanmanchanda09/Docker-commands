# Docker Commands

### `docker run` = `docker create` + `docker start`

`docker create <image name>` creates a container and `docker start <container id>` starts a container.

- Run an image

`docker run image_name`

- Override a command

`docker run busybox echo hi there`, `docker run busybox ls`

- List all running containers

`docker run busybox ping google.com`

`docker ps`

- List of all containers ever created

`docker ps --all`

- Creating a container

`docker create hello-world`

- Start a container

`docker start -a <container id>`

- Restart a container

`docker start -a <container id>`  *Check the container id using `ps` command.*

- Delete all containers

`docker system prune`

- Retrieving output logs

`docker logs <container id>`

- Stop a container

`docker stop <container id>`, `docker kill <container id>`

- Executing commands in running containers

`docker run redis`

`docker exec -it <container id> redis-cli`

- Getting a command prompt in a container

`docker exec -it <container id> sh` *Different command processors are `bash`, `powershell`, `zsh`, `sh`.*

- Starting shell using image

`docker run -it busybox sh`

### Creating the docker file
- Create an empty folder `redis-image`.
- Create a `Dockerfile` inside the folder.
- Inside the `Dockerfile` add

```
FROM alpine
RUN apk add --update redis
CMD ["redis-server"]
```

-  In terminal run `docker build .` inside the folder.
- Run `docker run <output id>`

- Tagging an image

`docker build -t namanmanchanda/redis:latest .`
 
 - Container Port Forwarding
 
 `docker run -p 8080:8080 <image name>`
 
 - Specifying a working directory
 
 `WORKDIR /usr/app` Add this in `Dockerfile`
 




