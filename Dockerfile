FROM ruby:2.5.1
COPY . /app
WORKDIR /app
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt install -y nodejs
RUN gem install bundler
RUN bundle install
RUN RAILS_ENV=test bundle exec rake db:migrate --trace
CMD rails s
EXPOSE 3000