FROM node:alpine 
WORKDIR /app
copy package.json .
RUN npm install
copy . .
RUN npm run build



