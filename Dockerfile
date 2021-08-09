FROM centos:latest
MAINTAINER amanulla.syed459@gmail.com
RUN yum install httpd \ zip \ unzip -y
ADD https://github.com/github/personal-website/archive/refs/heads/master.zip /var/www/html
WORKDIR /var/www/html
RUN unzip master.zip
RUN cp -rvf personal-website-master/* .
RUN rm -rf master.zip personal-website-master
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
