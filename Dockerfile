FROM rockylinux:9

LABEL maintainer="yuvrajpatil358@gmail.com"

RUN dnf install -y httpd git && \
    dnf clean all

WORKDIR /var/www/html

RUN git clone https://github.com/StartBootstrap/startbootstrap-agency.git temp && \
    cp -r temp/* . && \
    rm -rf temp

EXPOSE 80 25

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
