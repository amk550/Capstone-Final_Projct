FROM node:alpine

WORKDIR /home/ubuntu/project

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

CMD [ "node", "server.js" ]
