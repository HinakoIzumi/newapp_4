FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /newapp_4
WORKDIR /newapp_4
ADD Gemfile /newapp_4/Gemfile
ADD Gemfile.lock /newapp_4/Gemfile.lock
RUN bundle install
ADD . /newapp_4