# Get the latest node image
FROM denoland/deno:alpine-2.0.4

# Set the working directory in the container
WORKDIR /app

# Copy the script to the container
COPY . .

# Install strace and any other necessary tools for benchmarking
RUN apk add --no-cache strace