FROM ruby:2.2.3

MAINTAINER Brad Murray <wyaeld@gmail.com> <brad.murray@datacom.co.nz>

RUN gem install statsd-ruby docker-api

ADD src/monitor.rb src/monitor.rb

CMD ruby src/monitor.rb