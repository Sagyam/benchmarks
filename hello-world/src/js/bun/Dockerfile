# Get the latest node image
FROM oven/bun:1

# Set the working directory in the container
WORKDIR /app

# Copy the script to the container
COPY . .

# Install strace and any other necessary tools for benchmarking
RUN apt-get update && apt-get install -y strace