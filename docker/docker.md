# Docker

## Installation

### Mac

#### Brew
- Do not use brew if you want to run docker on your local machine.
    - Only command line tools are install.
    - This is useful for accessing another machine running docker.
```bash
brew install docker docker-compose docker-machine xhyve docker-machine-driver-xhyve
```
- To enable the xhyve hypervisor the permissions need updated.
```bash
sudo chown root:wheel /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s /usr/local/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
```

#### From Docker
(Docker Store)[https://store.docker.com/]
- Enter root password
- Preferences
    - Turn off "Start Docker every login"
    - Set path to file directories (/projects)

#### Command Line Completion
(Docker Help Page)[https://docs.docker.com/docker-for-mac/#bash]

```bash
brew install bash-completion

etc=/Applications/Docker.app/Contents/Resources/etc
ln -s $etc/docker.bash-completion $(brew --prefix)/etc/bash_completion.d/docker
ln -s $etc/docker-machine.bash-completion $(brew --prefix)/etc/bash_completion.d/docker-machine
ln -s $etc/docker-compose.bash-completion $(brew --prefix)/etc/bash_completion.d/docker-compose
```

# Commands
- Old format: `docker command`
- New format: `docker command sub-command`

```bash
# account commands
## Login to Docker Hub (Stores login information ~/.docker/config.json!!!)
docker login
## Logout of Docker Hub (ALWAYS run this command to remove account inforation.)
docker logout

# list all available docker commands
docker

# basic client/server version information
docker version

# detailed docker configuration information
docker info

# Container Commands
## run command on an existing container (add -it for interactive)
docker container exec

## json file with container metadata
docker container inspect

## list running containers
docker container ls

## list of all containers
docker container ls -a

## view container logs
docker container logs <container>

## see performace summary of all running containers
docker container stats

## stop a container (container: id or name)
docker container stop <container>

## view container processes
docker container top <container>

## remove container (may provide multiple containers)
docker container rm <container(s)>

# Network Commands
## change network assigned to a container
docker network disconnect
docker network connect

## create new network
docker network create

## metadata about network
docker network inspect my_network

## list all created networks
docker network ls
```

## Image
- *Image*: application to be run
- Default Image: `hub.docker.com`
- *latest* only means *default* and does not have to actually be the latest
version.
- Create private images on the web interface before uploading.
By default the image will be public.

## Containers
- *Container*: instance of an image running as a process
- Many containers may run from one image.

### Example
```bash
docker container run --publish 80:80 --detach --name container_name nginx
```
1. Download image of nginx from Docker Hub
    - the **detach** command starts the process in the background
1. Started new container from the image
1. (OPTIONAL) **name** provide a name for the container
1. Opened port 80 on the host IP (host port:container port)
    - if any process is using this port a **bind error** will be raised
1. Routes traffic to the container IP, port 80

### How to interact within a Container
```bash
docker continer run -it --name container_name nginx bash
```
- -i: keeps session open to send more commands
- -t: pseudo tty to simulate a terminal

### Start and Stop Containers
- Use the **-rm** argument to delete a container upon exit.
- If you stop a container it may be started again using **-start**.
```bash
docker container run --detach --name my_container nginx
docker container stop my_container
docker container start my_container
```