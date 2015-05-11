FROM docker.io/xsidekick/xsk_redmine:base
MAINTAINER Wattana Inthaphong <wti@g.xsidekick.com>

WORKDIR /tmp
COPY redmine-3.0.3/Gemfile /tmp/Gemfile
RUN bundle install
WORKDIR /
