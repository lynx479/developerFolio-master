# Use official Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy everything else
COPY . .

# Expose the development server port
EXPOSE 3000

# Start the React app
CMD ["npm", "run", "start-watch"]
