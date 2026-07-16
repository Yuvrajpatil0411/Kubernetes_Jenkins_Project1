FROM centos:7
MAINTAINER yuvrajpatil358@gmail.com
RUN yum install -y httpd zip unzip wget
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page285/viking.zip
WORKDIR /var/www/html/
RUN unzip viking.zip/
RUN cp -rvf viking/* .
RUN rm -rf viking viking.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
