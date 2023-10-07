FROM node:18
WORKDIR /usr/src/myapp
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/B-Rabbit7/DevOps-ass2.git .
COPY package*.json ./
RUN npm install
EXPOSE 80
CMD [ "node", "index.js" ]

