FROM ruby:2.5.1
WORKDIR /app
COPY Gemfile* ./
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN bundle install
COPY . .
RUN rails db:migrate RAILS_ENV=development
CMD rails s
EXPOSE 3000