# Use the official Python image
FROM python:3.9.20-alpine3.19

# Set the working directory in the container
WORKDIR /app

# Copy the script to the container
COPY . .

# Install strace and any other necessary tools for benchmarking
RUN apk add --no-cache strace