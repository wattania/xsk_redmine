FROM docker.io/xsidekick/xsk_redmine:base
MAINTAINER Wattana Inthaphong <wti@g.xsidekick.com>

# redmine_data -> /
VOLUME /opt/pgdata 
VOLUME /opt/redmine/files

RUN chown -R postgres.postgres /opt/pgdata

ENTRYPOINT ["/bin/true"]
