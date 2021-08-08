FROM centos:latest
MAINTAINER amanulla.syed459@gmail.com
RUN yum install httpd \ zip \ unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/bonativo.zip /var/www/html
WORKDIR /var/www/html
RUN unzip bonativo.zip
RUN cp -rvf bonavito/* .
RUN rm -rf bonativo.zip bonavito
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
