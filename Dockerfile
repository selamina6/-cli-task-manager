# Use an official lightweight Node.js runtime environment
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy configuration files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Set the default command when the container runs
ENTRYPOINT ["node", "index.js"]
