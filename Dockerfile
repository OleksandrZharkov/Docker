FROM ubuntu:20.10
MAINTAINER ozharkov
RUN apt-get update
RUN apt-get install -y apache2

COPY index.html /var/www/

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
