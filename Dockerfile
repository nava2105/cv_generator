# Dockerfile
FROM ruby:3.3.5

WORKDIR /cv_generator
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .

EXPOSE 4567
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]