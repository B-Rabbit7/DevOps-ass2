# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Install Git
RUN apt-get update && apt-get install -y git

# Clone your GitHub repository
RUN git clone https://github.com/B-Rabbit7/DevOps-ass2.git /usr/src/app
WORKDIR /usr/src/app/DevOps-ass2
COPY package*.json ./
RUN npm install
# Expose the port your app will run on (adjust this if needed)
EXPOSE 80
CMD [ "node", "index.js" ]
