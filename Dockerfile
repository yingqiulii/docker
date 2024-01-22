FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 7775

ENV NODE_ENV=production

CMD ["npm", "start"]
