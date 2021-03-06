FROM node:15

WORKDIR /usr/src/app

COPY ./ ./

RUN npm i -g ts-node

RUN npm i

RUN npm run build

EXPOSE 5002
EXPOSE 5003

CMD ["node", "dist/index.js"]
