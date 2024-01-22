FROM node:14-alpine
ENV NODE_ENV development
WORKDIR /li_yingqiu_site
COPY package.json .
COPY package-lock.json .
RUN npm install
COPY . .
EXPOSE 7775
CMD ["npm", "start"]
