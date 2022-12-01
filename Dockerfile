FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY example-express/package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY ./example-express .

EXPOSE 8080
CMD [ "node", "index.js" ]