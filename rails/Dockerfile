# using the base ruby:2.5 image from dockerhub
FROM ruby:2.5

# install node, postgres client
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# make a directory on the container called /myapp
RUN mkdir /myapp

# use that directory as the working directory
WORKDIR /myapp

# copy our Gemfile into the container
COPY Gemfile /myapp/Gemfile

# copy the Gemfile lock for pegged versions into the container
COPY Gemfile.lock /myapp/Gemfile.lock

# bundle install our dependencies in the container
RUN bundle install

# copy our project root into that `myapp` folder at build time
COPY . /myapp

# Copy our entrypoint script into the user binaries at build time
COPY entrypoint.sh /usr/bin/

# make that script executable
RUN chmod +x /usr/bin/entrypoint.sh

# entrypoint runs every time the container starts
ENTRYPOINT ["entrypoint.sh"]

# expose port 3000 to other containers
EXPOSE 3000

# start the main process, binding the server to 0.0.0.0 host inside the container
CMD ["rails", "server", "-b", "0.0.0.0"]