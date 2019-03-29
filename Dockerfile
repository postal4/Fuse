FROM ruby:2.3.1-slim

RUN apt-get update && \
    apt-get install -y curl libltdl-dev bash

# throw errors if Gemfile has been modified since Gemfile.lock
ENV APP_PATH /usr/src/app

RUN mkdir -p $APP_PATH

WORKDIR $APP_PATH

ENV RAILS_ENV development

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
