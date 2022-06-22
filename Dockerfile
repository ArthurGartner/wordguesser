FROM ruby:2.6.6

WORKDIR /wordguesser
COPY . /wordguesser
RUN bundle install

# this will be ignored by heroku
EXPOSE 80

# these ensure (for heroku) that we can run as non-root user
# RUN useradd -m myuser
# USER myuser

# execution list precludes use of variable
CMD bundle exec rackup --host 0.0.0.0 --port 80

#Run: docker run -d -p 8080:80 wordguesser