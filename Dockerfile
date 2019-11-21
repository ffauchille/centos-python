FROM centos:centos6.10

MAINTAINER ffauchille 

RUN yum -y install wget curl gcc gcc-c++ openssl-devel bzip2-devel

WORKDIR /usr/src

RUN wget https://www.python.org/ftp/python/2.7.10/Python-2.7.10.tgz

RUN tar xzf Python-2.7.10.tgz

WORKDIR Python-2.7.10

RUN ./configure --enable-optimizations

RUN make altinstall

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"

RUN python2.7 get-pip.py

