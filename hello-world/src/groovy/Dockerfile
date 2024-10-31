# Download official Groovy image
FROM groovy:jdk17-jammy

# Set the working directory
WORKDIR /app

# Copy the source code
COPY . .

# Run as root
USER root

# Install strace for benchmarking
RUN apt-get update && apt-get install -y strace


