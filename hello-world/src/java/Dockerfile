# Description: Dockerfile for the Java program
FROM openjdk:19-jdk-alpine3.16

# Set the working directory in the container
WORKDIR /app

# Copy the script to the container
COPY . .

# Compile the Java program
RUN javac HelloWorld.java

# Install strace and any other necessary tools for benchmarking
RUN apk add --no-cache strace
