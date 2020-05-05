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
