FROM debian:buster

RUN apt-get update \
&& apt-get install -y vim \
&& apt-get install -y nginx

WORKDIR /tmp

COPY ./srcs/nginx/index.html ./
COPY ./srcs/nginx/default ./
COPY ./srcs/init.sh ./

RUN ./init.sh

WORKDIR ..

CMD ["bash"]