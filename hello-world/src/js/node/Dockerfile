# Get the latest node image
FROM node:22-alpine3.20

# Set the working directory in the container
WORKDIR /app

# Copy the script to the container
COPY . .

# Install strace and any other necessary tools for benchmarking
RUN apk add --no-cache strace