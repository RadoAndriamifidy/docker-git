FROM ubuntu
MAINTAINER radoAndriamifidy (radoAndriamifidy2020@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80
ADD ./index.html /var/www/html/
ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;" ]