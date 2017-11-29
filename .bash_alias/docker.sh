# Build an image for the current directory's source given Dockerfile

# usage: docker-build [project name] [build/version number]
docker-build() {
  docker build -t $1:$2 --no-cache .
}
alias db=docker-build

# usage: docker-run [container name] -d -p 8888:3000 [image name]:[tag name]
# Launch a new container from an image
docker-run(){
    echo "docker run --name $1 -rm -d -p 8888:3000 $2:$3"
}
alias dr=docker-run

# List all exited containers
alias dps="docker ps -aq -f status=exited"


# Remove stopped containers
# Note: This command will not remove running containers, only an error message will be printed out for each of them.
alias dps="docker ps -aq --no-trunc | xargs docker rm"

# Remove dangling/untagged images
alias dps="docker images -q --filter dangling=true | xargs docker rmi"

# Remove containers created after a specific container
alias dps="docker ps --since a1bz3768ez7g -q | xargs docker rm"

# Remove containers created before a specific container
# Note: Use --rm for docker build
# Note: Use --rm together with docker build to remove intermediary images during the build process.
alias dps="docker ps --before a1bz3768ez7g -q | xargs docker rm"


# usage docker-exec [CONTAINER_ID]
docker-exec() {
  docker exec -it $1 bash
}
alias dex=docker-exec
