# Use the official Node.js LTS image as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port that your application will run on
EXPOSE 8080

# Start the Node.js application
CMD ["node", "app.js"]