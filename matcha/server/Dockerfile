FROM node:20-alpine3.19

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json .
COPY yarn.lock .

RUN npm install && \
    yarn install

COPY . .

EXPOSE 3001

CMD ["yarn", "start"]
