FROM ruby:2.5.1
COPY . /app
WORKDIR /app
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt install -y nodejs
RUN gem install bundler
RUN bundle install
CMD rails s
EXPOSE 3000