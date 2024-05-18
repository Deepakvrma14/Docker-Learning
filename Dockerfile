FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs
# layed caching for faster builds .. means that if the package.json file is not changed, the npm install will not run again and above layers will be used
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY App.js App.js

RUN npm install

ENTRYPOINT [ "node" , "App.js" ]