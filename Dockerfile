# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Install Git
RUN apt-get update && apt-get install -y git

# Clone your GitHub repository
RUN git clone https://github.com/B-Rabbit7/DevOps-ass2.git /usr/src/app

# Expose the port your app will run on (adjust this if needed)
EXPOSE 80

# Install a simple HTTP server
RUN npm install -g http-server

# Define the command to start the HTTP server serving your HTML file
CMD [ "http-server", "/app", "-p", "80" ]
