FROM centos:7.7.1908

RUN yum update -y
RUN yum install -y gcc openssl-devel bzip2-devel make wget

RUN wget https://www.python.org/ftp/python/3.6.8/Python-3.6.8.tgz
RUN tar xzf Python-3.6.8.tgz
WORKDIR Python-3.6.8
RUN ./configure  --enable-optimizations
RUN make altinstall
WORKDIR /

