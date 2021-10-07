FROM ruby:2.7.4
RUN apt-get update -qq && apt-get install -y libpq-dev
WORKDIR /compose-on-rails
COPY Gemfile /compose-on-rails/Gemfile
COPY Gemfile.lock /compose-on-rails/Gemfile.lock
RUN bundle install
EXPOSE 3000
COPY . /compose-on-rails
ENTRYPOINT [ "scripts/entrypoint.sh" ]

CMD ["rails", "server", "-b", "0.0.0.0"]
