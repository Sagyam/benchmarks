# Use the official Clojure image
FROM clojure:temurin-8-tools-deps-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the script to the container
COPY . .

# Install strace and any other necessary tools for benchmarking
RUN apk add --no-cache strace