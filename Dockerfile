FROM node:10-alpine

WORKDIR /app

RUN npm install -g http-server

COPY . .

RUN npm install 

CMD http-server -p 8888 -c-1 --cors

EXPOSE 8888
