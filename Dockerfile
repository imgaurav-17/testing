# Use an official Node.js runtime as the base image
FROM node:latest

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json into the directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# If you are building your code for production, run `npm ci --only=production`

# Bundle app source inside Docker image (make sure .dockerignore file is set up)
COPY . .



# Run main.js when the container launches
CMD [ "node", "main.js" ]

# Make port 80 available to the world outside this container
EXPOSE 8080
