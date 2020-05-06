# Creating simple python application in DOCKER

## Installation of required components

```pip install flask```
generate requirements required for creating a requirement file, this is used to install the container dependencies 
```pip freeze > requirements.txt```

## Docker creation

navigate into the directory, wher the application is installed

Create docker container using the following command:

```docker build --tag my-app .```

now run it on local machine using the following command

```docker run --name python-app -p 5000:5000 my-app```

Export of the images to local directory where *python4nas* is name of exported image and *be590e0bc424* is name of generated container

```docker save be590e0bc424 -o C:\MyProjects\python4nas```

## PreRequsites

if a linux version is required ensure the following command line is executed under administrators privileges 

```Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux```

## Publlish container using DockerHub

this assumes that you have user account and is setup with docker locally

run commands:

### Login into docker repository

use the following command to login into the docker hub

```docker login```

### Commit the docker image locally

```docker commit my-app```

### Tag the container

```docker tag {containerName} {userName}/{repository}```

### Example of tagging repository

```docker tag 3ccf69ce1d7f cpodesign/test```

### upload container to the docker

```docker push {userName}/{respository}```

Example:

```docker push cpodesign/test```

## Cleaning working station

Stop all containers
```docker stop $(docker ps -a -q)```

Force stop all containers
```docker kill $(docker ps -a -q) --force```

Clean containers
```docker rm $(docker ps -a -q)```

Force remove all images
```docker rmi $(docker images -q) --force``