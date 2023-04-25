FROM node:16-alpine:latest

WORKDIR /app

ENV PORT=3000

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

CMD ["npm", "start"]