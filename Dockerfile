FROM node:alpine 
WORKDIR /app
copy package.json .
RUN npm install
copy . .
RUN npm run build

FROM nginx
COPY --from=0 /app/build /usr/share/nginx/html
