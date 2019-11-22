FROM centos:centos6.10

MAINTAINER bettermarks

RUN yum -y install \
  scl-utils \
  centos-release-scl-rh \
  wget \
  curl \
  gcc \
  gcc-c++ \
  openssl-devel \
  bzip2-devel

RUN yum -y install python27-python-2.7.13

ENV PATH=/opt/rh/python27/root/usr/bin${PATH:+:${PATH}}
ENV LD_LIBRARY_PATH=/opt/rh/python27/root/usr/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
ENV MANPATH=/opt/rh/python27/root/usr/share/man:${MANPATH}
# For systemtap
ENV XDG_DATA_DIRS=/opt/rh/python27/root/usr/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
# For pkg-config
ENV PKG_CONFIG_PATH=/opt/rh/python27/root/usr/lib64/pkgconfig${PKG_CONFIG_PATH:+:${PKG_CONFIG_PATH}}

