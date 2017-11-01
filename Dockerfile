FROM debian:8.9
MAINTAINER admin <evgeniy@kolesnyk.ru>
RUN export DEBIAN_FRONTEND="noninteractive"

RUN apt-get update -y
RUN apt-get upgrade -y
RUN debconf-set-selections <<< "mysql-server mysql-server/root_password password rootpw"
RUN debconf-set-selections <<< "mysql-server mysql-server/root_password_again password rootpw"
RUN apt-get install mysql-serve -y

EXPOSE 3306
