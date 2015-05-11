FROM docker.io/xsidekick/xsk_redmine:base
MAINTAINER Wattana Inthaphong <wti@g.xsidekick.com>


ADD redmine-3.0.3/Gemfile /tmp/Gemfile
RUN bundle install
#ADD rails_server/Gemfile.lock /tmp/Gemfile.lock
WORKDIR /