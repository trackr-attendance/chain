FROM node:4.6

WORKDIR /app

# install app dependencies
COPY package*.json ./
RUN npm install --production

EXPOSE 80
EXPOSE 6001

# copy app source
COPY ./ ./

ENTRYPOINT HTTP_PORT=80 PEERS=$PEERS npm start