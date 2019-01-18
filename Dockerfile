FROM ruby:2.6-slim-stretch

WORKDIR /app
RUN apt-get update -qq && apt-get install -y build-essential

COPY . ./
RUN bundle
CMD bundle exec puma --config config/puma.rb
