FROM rockylinux:9
MAINTAINER yuvrajpatil358@gmail.com
RUN dnf install -y httpd zip unzip wget
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page285/viking.zip
WORKDIR /var/www/html
RUN unzip viking.zip && \
    cp -rvf viking/* . && \
    rm -rf viking viking.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
