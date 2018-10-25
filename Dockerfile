FROM ruby:2.5.1
RUN gem install bundler
RUN bundle install