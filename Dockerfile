FROM node:16.13.0


WORKDIR /app
COPY ./package.json .
COPY yarn.lock .
RUN yarn install
COPY . .

EXPOSE 3000


CMD ["npm","run","start"]
