# Use the official Python image
FROM python:3.9.20-alpine3.19

# Copy the script to the container
COPY . /app

# Install strace and any other necessary tools for benchmarking
RUN apk add --no-cache strace

# Run the script and log performance data
CMD ["bash", "-c", "strace -c python /app/python.py > /results/strace.txt && echo 'Benchmark complete!'"]

# Build and tag the image as 'benchmark-python'
# docker build -t benchmark-python -f python/py.dockerfile .