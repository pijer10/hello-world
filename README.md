# "Hello World" web service

This is a web service that replies with a "Hello World" message to all requests.
It is written in Python's web framework Flask, app is listening on localhost and port 8080.
Of course, there are many ways how to display "Hello World" message, but I chose Flask because it is a small and lightweight.

## Structure of the folder
Application's code is written in `main.py`.
In order to run this program, make sure to have all the required dependencies installed first - shown in `requirements.txt`. 
To generate a Docker image there is a `Dockerfile` which contains instructions needed to build the image. 

## Instructions to run this service

You can run in several ways, here I show options to run as a docker container and in Kubernetes.

### Docker run

If you want to run this service via docker containers, you should first clone this repo. The next step is to build the image:
`docker build -t hello-world-image .`

Now the app is ready to run:
`docker run -d -p 5000:5000 hello-world-image`

### Kubernetes Run
This image is public: https://hub.docker.com/r/pijer10/hello-world
The deployment yaml file should look like this:
```
apiVersion: apps/v1 
kind: Deployment
metadata:
  name: hello-world
spec:
  selector:
    matchLabels:
      app: hello-world
  template:
    metadata:
      labels:
        app: hello-world
    spec:
      containers:
      - name: hello-world-container
        image: pijer10/hello-world:1.0
```
