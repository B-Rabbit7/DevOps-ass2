FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install Git
RUN apt-get update && apt-get install -y git

# Clone your GitHub repository
RUN git clone https://github.com/B-Rabbit7/DevOps-ass2.git .

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install

# Expose the port your app will run on (adjust this if needed)
EXPOSE 8080

# Specify the command to start your Node.js application
CMD [ "node", "index.js" ]

