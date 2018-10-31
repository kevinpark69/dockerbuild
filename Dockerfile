FROM ubuntu:16.04
MAINTAINER kevin park
LABEL purpose="Hans-ON-Lab"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo 2nd webpaged!! >> test2.html"]
EXPOSE 80
CMD ["apachectl", "-DFOREGROUND"]
