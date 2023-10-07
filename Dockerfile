FROM node:14

WORKDIR /app

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/B-Rabbit7/DevOps-ass2.git /app

EXPOSE 80

RUN npm install -g http-server

CMD [ "http-server", "/app", "-p", "80" ]

