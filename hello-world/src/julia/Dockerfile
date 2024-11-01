# Description: Dockerfile for Julia
FROM julia:1.10.6-alpine3.20

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install strace and any other necessary tools for benchmarking
RUN apk add --no-cache strace