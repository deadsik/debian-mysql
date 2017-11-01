FROM debian:8.9
MAINTAINER admin <evgeniy@kolesnyk.ru>
RUN export DEBIAN_FRONTEND="noninteractive"

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y debconf-utils

COPY install_mysql.sh /root/install_mysql.sh 
RUN chmod +x /root/install_mysql.sh
RUN /root/install_mysql.sh

EXPOSE 3306
