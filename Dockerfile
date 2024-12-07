# Base image: Node.js 18
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Run the bot
CMD ["node", "index.js"]
