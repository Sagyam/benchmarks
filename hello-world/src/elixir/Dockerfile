# Use the official Elixir image
FROM elixir:1.17.3-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Compile elixir.ex file
RUN elixirc elixir.ex


# Install strace for benchmarking
RUN apk add --no-cache strace