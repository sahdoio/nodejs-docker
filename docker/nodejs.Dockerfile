FROM node:12

WORKDIR /var/www/

RUN apt-get update && apt-get -f -y install unzip wget

COPY package.json /var/www/

RUN npm install && \
    npm install -g \
        nodemon \
        knex

RUN apt-get update
RUN apt-get install -y build-essential
RUN npm install -g gulp
RUN npm install -g bower

EXPOSE 8081

CMD ["npm", "run", "dev"]
