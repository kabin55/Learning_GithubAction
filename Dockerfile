FROM node:22-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json first (for caching)
COPY package*.json ./

# Install Node dependencies
RUN npm install

# Copy rest of the app
COPY . .

# Expose port your app uses
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
