FROM registry.access.redhat.com/ubi8/nodejs-16:1-72.1669834625

WORKDIR /opt/app-root
COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
