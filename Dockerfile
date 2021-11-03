FROM node:lts

WORKDIR /usr/src/app

COPY package*.json ./

# RUN npm install
# If you are building your code for production
RUN npm ci --only=production

# Bundle app source
COPY . .

RUN npm run build

EXPOSE 80
EXPOSE 8080

CMD [ "npm", "start" ]
