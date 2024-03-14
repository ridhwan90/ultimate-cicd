FROM node:21-alpine3.18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY ./.next ./.next
COPY ./public ./public
COPY ./next.config.js ./

EXPOSE 3000

CMD ["npm", "run", "start"]