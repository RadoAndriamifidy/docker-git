FROM ubuntu
MAINTAINER radoAndriamifidy2020@hotmail.com 
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
#ADD ./index.html /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/RadoAndriamifidy/docker-git.git /var/www/html/
ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;" ]