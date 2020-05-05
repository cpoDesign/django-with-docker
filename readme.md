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