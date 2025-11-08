# Use an official Node.js runtime as a base
FROM node:18-alpine

# Create and set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the app
COPY . .

# Expose port (Render uses 10000 by default)
EXPOSE 10000

# Start the app
CMD ["node", "server.js"]
