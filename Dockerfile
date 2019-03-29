FROM node:8.15.1

EXPOSE 3000

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
COPY . /usr/src/app

RUN npm install --unsafe-perm

CMD node .
