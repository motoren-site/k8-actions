# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy both package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the Vue.js application
RUN npm run build

# Expose the port that the Vue.js app will run on
EXPOSE 8080

# Define the command to start the Vue.js app
CMD [ "npm", "run", "start" ]
