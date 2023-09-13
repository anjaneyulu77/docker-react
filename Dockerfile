FROM node:alpine 
WORKDIR /app
copy package.json .
RUN npm install
copy . .
RUN npm run build

FROM nginx
EXPOSE 80
copy --from=0 /app/build /var/usr/share/nginx/html

