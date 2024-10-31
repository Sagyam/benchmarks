FROM erlang:27-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Compile the Erlang file
RUN erlc erlang.erl

# Install strace for benchmarking
RUN apk add --no-cache strace