# Determine our base image
FROM node:14

# Set the working directory to the image
WORKDIR /app

# Copy package.json and package-lock.json file
# to the current working directory
COPY package*.json ./

# Install our dependencies
RUN npm install

# Copy all of our local file to the current working directory
# At this step you should create a .dockerignore file as below
# because we don't want to copy (override) the node_modules folder
COPY . .

# Set our environment variable
ENV PORT=5000

# Define the network port(s) that this container will listen on at runtime
EXPOSE 5000

# Run our application
CMD npm start
