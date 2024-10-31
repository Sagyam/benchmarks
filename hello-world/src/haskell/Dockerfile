# Use the official Python image
FROM haskell:9.6.6-slim-bullseye

# Set the working directory in the container
WORKDIR /app

# Copy the script to the container
COPY . .

# Compile the Haskell program
RUN ghc -O2 -o haskell haskell.hs

# Install strace and any other necessary tools for benchmarking
RUN apt-get update && apt-get install -y \
    strace