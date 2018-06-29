FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /newapp_3
WORKDIR /newapp_3
ADD Gemfile /newapp_3/Gemfile
ADD Gemfile.lock /newapp_3/Gemfile.lock
RUN bundle install
ADD . /newapp_3