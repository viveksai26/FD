FROM node:alpine
RUN mkdir -p /app
WORKDIR /app
COPY package*.json ./app
RUN npm install
COPY . /app
CMD [ "npm", "start" ]
# RUN npm run build --prod

# FROM nginx
# COPY --from=build-step /app/dist /usr/share/nginx/html
