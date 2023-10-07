FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the content of the local directory to the working directory
COPY . .

# Expose the port your app will run on
EXPOSE 80

# Define the command to run your application
CMD [ "node", "app.js" ]
