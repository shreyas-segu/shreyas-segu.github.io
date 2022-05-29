FROM ruby:3.1.1-alpine3.15

RUN apk add --no-cache build-base nodejs-current

RUN gem install bundler

WORKDIR /usr/src/app

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install

COPY . .

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]

EXPOSE 4000

