FROM node:16.18.1-alpine

WORKDIR /app/user-management

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

RUN npm run build

RUN npm run generate

CMD [ "npm", "start" ]

EXPOSE 3000