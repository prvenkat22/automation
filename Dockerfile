FROM java:8-jre

## Node.js setup
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

## Nightwatch
RUN npm install -g nightwatch
