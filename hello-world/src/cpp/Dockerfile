# Use the official GCC image
FROM gcc:14.2.0-bookworm

# Set the working directory in the container
WORKDIR /app

# Copy the script to the container
COPY . .

# Install strace and any other necessary tools for benchmarking
RUN apt-get update && apt-get install -y strace

# Compile the C++ code
RUN g++ -o cpp-gcc cpp.cpp