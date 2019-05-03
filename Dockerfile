FROM node:10-alpine

WORKDIR /app
COPY . /app

RUN npm install

EXPOSE 3000
ENV APP_COLOR blue

CMD ["node", "app.js"]