FROM ruby:2.3.1-onbuild

# Install basic packages
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Make app dir
RUN mkdir /aircall
WORKDIR /aircall

# Load dependencies
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5

# Declare volume for app files
VOLUME /aircall

ENV RAILS_ENV=test

# Copy entrypoint script
COPY .docker/app/app_test/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]