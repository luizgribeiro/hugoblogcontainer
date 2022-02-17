FROM golang:1.17-buster

WORKDIR /

RUN apt update -y && apt upgrade 

RUN apt install git 

RUN ["git", "clone", "https://github.com/gohugoio/hugo.git"]

WORKDIR /hugo

RUN ["go", "install", "--tags", "extended"]

EXPOSE 1313/tcp

WORKDIR /blog

CMD ["/bin/bash", "-i"]
