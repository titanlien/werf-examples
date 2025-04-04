FROM node:23.10.0-alpine3.21
WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci --production
COPY . .

