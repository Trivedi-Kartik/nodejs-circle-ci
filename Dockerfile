FROM node:16-alpine AS deps

WORKDIR /app
COPY package*.json ./
RUN npm i
COPY . ./
RUN ["npm","run","start"]
