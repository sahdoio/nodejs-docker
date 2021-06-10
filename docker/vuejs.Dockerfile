# develop stage
FROM node:12.16-alpine as develop-stage

WORKDIR /var/www/

COPY package.json /var/www/

RUN npm install && \
    npm install -g @vue/cli-service

EXPOSE 8080

CMD ["npm", "run", "dev"]