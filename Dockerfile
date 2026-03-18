# Use official Node.js LTS Alpine image (small & secure)
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package files first (for caching)
COPY app/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY app/ .

# Expose port 3000
EXPOSE 3000

# Command to start the app
CMD ["node", "app.js"]
