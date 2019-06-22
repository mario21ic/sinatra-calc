FROM ruby:2.6.2

RUN mkdir /app/
WORKDIR /app

COPY Gemfile /app/
RUN bundler

COPY ./src/ /app/


CMD ["ruby", "/app/main.rb"]

EXPOSE 8080
