FROM docker.io/centos:8

RUN yum install -y ruby ruby-devel make gcc redhat-rpm-config rpm-build
RUN gem install fpm

WORKDIR /srv

ENTRYPOINT ["fpm"]
