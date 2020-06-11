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

