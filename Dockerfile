FROM node:10-alpine

WORKDIR /app
COPY . /app

RUN npm install

EXPOSE 5000
ENV APP_COLOR purple

CMD ["node", "app.js"]