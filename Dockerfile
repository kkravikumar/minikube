FROM debian:stable-slim

RUN apt-get update ; apt-get install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     sudo \
     software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

RUN apt-get update && sudo apt-get install -y docker-ce \
	psmisc && rm -rf /var/lib/apt/lists/*

# There are version compatiblity issues, hence its been hardcoded
ADD https://storage.googleapis.com/kubernetes-release/release/v1.10.1/bin/linux/amd64/kubectl kubectl
ADD https://storage.googleapis.com/minikube/releases/v0.24.0/minikube-linux-amd64 minikube

RUN chmod +x kubectl; chmod +x minikube && mv kubectl /usr/local/bin/  ; mv minikube /usr/local/bin/

ADD start-minikube.sh /app/start-minikube.sh

ENTRYPOINT ["/app/start-minikube.sh"]
