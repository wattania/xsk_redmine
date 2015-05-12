FROM centos:centos6.6
MAINTAINER Wattana Inthaphong <wti@g.xsidekick.com>
# enable centos plus repo and install epel repo
RUN rpm -iUvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm \
&& rpm -iUvh http://yum.postgresql.org/9.4/redhat/rhel-6-x86_64/pgdg-centos94-9.4-1.noarch.rpm \
&& yum update -y \
&& yum install -y make patch libyaml-devel libffi-devel glibc-headers autoconf gcc-c++ glibc-devel patch readline-devel zlib-devel openssl-devel bzip2 automake libtool bison \
&& yum install -y postgresql94 postgresql94-devel postgresql94-libs postgresql94-server \
&& yum install -y wget monit mlocate vim which tar \
&& yum install -y curl-devel pcre-devel \
&& yum install -y git \
&& yum install -y ImageMagick* \
|| yum clean all

# RUBY ###########
ADD ruby-2.2.2.tar.bz2 /tmp
WORKDIR /tmp/ruby-2.2.2
RUN ./configure --disable-install-rdoc --disable-install-ri \
 && make \
 && make install \
 && rm -rf /tmp/ruby-2.2.2

WORKDIR /tmp
RUN gem install --no-rdoc --no-ri rails -v '4.2.1'
RUN gem install --no-rdoc --no-ri pg -v '0.17.1' -- --with-pg_config=/usr/pgsql-9.4/bin/pg_config
RUN gem install therubyracer --no-ri --no-rdoc
RUN gem install --no-rdoc --no-ri passenger -v '5.0.7'
RUN passenger-install-nginx-module --auto

ADD redmine-3.0.3.tar.gz /opt
RUN chown root.root -R /opt/redmine-3.0.3

WORKDIR /
