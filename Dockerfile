FROM node:10

# Modify www-data user id to 1000 to avoid permission issues with mounted volumes.
RUN apt-get update
RUN apt-get install -y apt-transport-https

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update
RUN apt-get install -y yarn
RUN apt-get install -y rsync