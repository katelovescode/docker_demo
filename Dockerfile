FROM ruby:2.7.1-slim-buster

WORKDIR /app

COPY . /app

RUN gem install sinatra

CMD ruby /app/trebek.rb -o 0.0.0.0
# docker run --rm -it -p 4567:4567 trebek