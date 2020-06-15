#Specify base image
FROM node:alpine

# Install dependencies
WORKDIR /usr/app
COPY ./ ./
RUN npm install

# Default command
CMD ["npm","start"]





