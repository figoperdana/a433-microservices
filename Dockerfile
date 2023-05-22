FROM node:14

WORKDIR /app
COPY ./package*.json .
COPY ./gulpfile.js .

RUN npm install --production --unsafe-perm && npm run build
COPY . .

ENV NODE_ENV=production DB_HOST=item-db

EXPOSE 8080
CMD [ "npm", "run", "start" ]