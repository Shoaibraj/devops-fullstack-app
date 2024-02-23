# Use Ubuntu as the base image
FROM ubuntu:latest

# Update package lists and install necessary dependencies
RUN apt-get update \
    && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs

# Install npm separately
#RUN apt-get install -y npm

# Verify installation
RUN node -v
RUN npm -v
RUN npm start
RUN npm test

# Set the working directory
WORKDIR /app

# Copy your application files to the working directory
COPY . .

# Command to run your application
CMD [ "npm", "run", "build" ]
