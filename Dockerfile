FROM ruby:1

ADD . /usr/src/blog/
WORKDIR /usr/src/blog
RUN bundle install
RUN apt-get update && apt-get install -y nodejs

VOLUME /usr/src/blog

CMD ["jekyll", "serve", "--watch"]
