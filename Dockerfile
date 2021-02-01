FROM node:10

WORKDIR /app

COPY package*.json ./

RUN npm install --only=production
RUN apt install bash

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
