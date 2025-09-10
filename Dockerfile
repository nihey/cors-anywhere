FROM node:22-alpine


WORKDIR /var/www/

COPY package*.json ./
RUN npm install

COPY . .

ENV CORSANYWHERE_RATELIMIT="600 1"
ENV PORT=3000

EXPOSE 3000

CMD [ "npm", "start" ]
