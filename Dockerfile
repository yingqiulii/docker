FROM node:14

WORKDIR /li_yingqiu_site

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 7775

CMD ["npm", "start"]
