FROM docker.io/xsidekick/xsk_redmine:base
MAINTAINER Wattana Inthaphong <wti@g.xsidekick.com>

WORKDIR /opt/redmine-3.0.3
COPY config/database.yml /opt/redmine-3.0.3/config/database.yml
RUN bundle install
WORKDIR /

COPY config/themes/xsidekick /opt/redmine-3.0.3/public/themes/xsidekick

COPY config/secrets.yml /opt/redmine-3.0.3/config/secrets.yml
COPY config/monit/nginx.conf /etc/monit.d/nginx.conf
COPY config/monit/postgresql.conf /etc/monit.d/postgresql.conf
COPY config/nginx/nginx.conf /opt/nginx/conf/nginx.conf

COPY config/nginx/nginx.init.d /etc/init.d/nginx
RUN chmod +x /etc/init.d/nginx

COPY config/postgresql/postgresql-9.4 /etc/init.d/postgresql-9.4
RUN chmod +x /etc/init.d/postgresql-9.4

COPY config/monit/monit.conf /etc/monit.conf
RUN chmod 700 /etc/monit.conf
