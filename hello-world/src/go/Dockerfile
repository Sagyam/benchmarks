# Get official image of Go
FROM golang:1.22-alpine3.19

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the Go app
RUN go build -o hello main.go

# Install strace for benchmarking
RUN apk add --no-cache strace