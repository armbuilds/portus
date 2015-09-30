FROM armbuilds/rails:4.2.4
MAINTAINER Flavio Castelli <fcastelli@suse.com>

RUN apt-get update
RUN mkdir /portus
WORKDIR /portus
ADD . /portus
RUN gem install eventmachine 
RUN bundle install --retry=3

ENV COMPOSE=1

EXPOSE 3000
