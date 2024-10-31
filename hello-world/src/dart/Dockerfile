# Use the official Dart image as the base image
FROM dart:3.5.4 AS builder

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN dart pub get

# Compile the Dart application to a native executable
RUN dart compile exe dart.dart -o dart

# Install strace for benchmarking
RUN apt update && apt install -y strace