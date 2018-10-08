# minikube
This project is created to build a docker image for Minikube application to test any [Kubernetes](https://kubernetes.io/) sample application. Strictly this is not for production use. 

## Getting Started - Customization.
To customize this, clone this project, change any versions libraries and build the image.

```
$ git clone https://github.com/kkravikumar/minikube.git 
$ docker build -t minikube .

```

## Getting Started to use this Docker image.

### Prerequisites

To use this, you should have [Docker](https://www.docker.com/) installed on your machine.

This docker images is already built and publised into [Docker hub](https://hub.docker.com/r/kkravikumar/minikube/) for ready to use.

```
$ docker pull kkravikumar/minikube
$ docker run -dit -p 30000 -p 31920 -p 8001 --rm --privileged=true kkravikumar/minikube

```

## Authors

* **Ravikumar Kuppusamy** - *Initial work* - [RaviK](https://github.com/kkravikumar)

