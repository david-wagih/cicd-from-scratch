# Use the official lightweight Node.js image
FROM node:20-alpine

# Create and set the working directory
WORKDIR /app

# Copy package files first to leverage Docker layer caching
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of your application code
COPY . .

# Expose the port Express runs on, for documentation purposes
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]