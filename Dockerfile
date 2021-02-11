FROM centos:7.9.2009
RUN yum install -y httpd unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page262/pomato.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip pomato.zip
RUN mv -rvf pomato/* .
RUN rm -rf pomato.zip pomato
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
