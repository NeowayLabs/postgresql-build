# vim:set ft=dockerfile:
FROM centos:7.3.1611

MAINTAINER Marcelo Kruger - Neoway <marcelo.kruger@neoway.com.br>

# Blocksize and archive size for postgresql
ENV BLOCKSIZE 32
ENV WAL_SIZE 8

RUN yum -y groupinstall Development Tools \
 && yum -y install e2fsprogs-devel \
 && yum -y install krb5-devel \
 && yum -y install libselinux-devel \
 && yum -y install libuuid-devel \
 && yum -y install libxml2-devel \
 && yum -y install libxslt-devel \
 && yum -y install openldap-devel \
 && yum -y install openssl-devel \
 && yum -y install pam-devel \
 && yum -y install perl-ExtUtils-Embed \
 && yum -y install python-devel \
 && yum -y install readline-devel \
 && yum -y install selinux-policy \
 && yum -y install systemd-devel \
 && yum -y install systemtap-sdt-devel \
 && yum -y install tcl-devel \
 && yum -y install zlib-devel \
 && rpm -ivh https://yum.postgresql.org/srpms/9.6/redhat/rhel-7-x86_64/postgresql96-9.6.5-1PGDG.rhel7.src.rpm

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
