FROM node:18.16.1

WORKDIR /the/test/app

COPY package.json .

RUN yarn && yarn install

COPY . .

EXPOSE 80

CMD [ "node", "dist/main.js" ]