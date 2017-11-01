FROM debian:8.9
MAINTAINER admin <evgeniy@kolesnyk.ru>
RUN export DEBIAN_FRONTEND="noninteractive"

RUN apt-get update -y
RUN apt-get upgrade -y
RUN echo "mysql-server mysql-server/root_password password strangehat" | sudo debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password strangehat" | sudo debconf-set-selections
RUN apt-get install mysql-server -y

EXPOSE 3306
