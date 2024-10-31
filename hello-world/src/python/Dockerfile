# Use the official Python image
FROM python:3.9.20-alpine3.19

# Copy the script to the container
COPY ./python.py /python.py

# Install strace and any other necessary tools for benchmarking
RUN apk add --no-cache strace