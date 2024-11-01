# Downlod the latest zig image
FROM ziglang/ziglang:latest

# Copy the source code into the container
COPY . .

# Compile the source code
RUN zig build-exe src/hello.zig

# Intall strace for debugging
RUN apt-get update && apt-get install -y strace