# Description: Dockerfile for Julia
FROM ubuntu:noble

# Set the working directory to /app
WORKDIR /app

# Install strace and any other necessary tools for benchmarking
RUN apt-get update && apt-get install -y strace curl apt-transport-https unzip bash tar
# Set bash as the default shell
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Install all porgamming languages and tools

# GCC LLVM Clang
RUN apt-get install -y --no-install-recommends build-essential clang
RUN gcc --version
RUN clang --version

# Clojure
RUN curl -L -O https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh
RUN chmod +x linux-install.sh
RUN ./linux-install.sh
RUN clojure --version


# CSharp
RUN apt-get install -y --no-install-recommends dotnet-sdk-9.0
RUN dotnet --version

# Dart
RUN curl -L -O https://storage.googleapis.com/dart-archive/channels/stable/release/latest/linux_packages/dart_3.5.4-1_amd64.deb
RUN dpkg -i dart_3.5.4-1_amd64.deb
RUN dart --version

# Elixir
RUN apt-get install -y --no-install-recommends elixir
RUN elixir --version

# Erlang
RUN apt-get install -y --no-install-recommends erlang
RUN erl --version

# Go
RUN apt-get install -y --no-install-recommends golang
RUN go version

# Groovy
RUN apt-get install -y --no-install-recommends groovy
RUN groovy --version

# Haskell
RUN apt-get install -y --no-install-recommends ghc
RUN ghc --version

# Java
RUN apt-get install -y --no-install-recommends openjdk-21-jdk
RUN javac --version
RUN java --version

# NodeJS Deno Bun
RUN apt-get install -y nodejs
RUN curl -fsSL https://bun.sh/install | bash
RUN curl -fsSL https://deno.land/install.sh | bash
# Add Deno and Bun to the PATH
ENV PATH="/root/.deno/bin:${PATH}"
ENV PATH="/root/.bun/bin:${PATH}"
RUN node --version
RUN deno --version
RUN bun --version

# Julia
RUN curl -sSL "https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.1-linux-x86_64.tar.gz" -o julia.tar.gz
RUN tar zxvf julia.tar.gz
RUN mv julia-* /usr/local/julia
RUN ln -s /usr/local/julia/bin/julia /usr/local/bin/julia
RUN julia --version

# Installing Kotlin is a mess so we will skip it for now

# Lua
RUN apt-get install -y --no-install-recommends lua5.4
RUN lua -v

# Nim
RUN curl -sL https://nim-lang.org/choosenim/init.sh | sh -s -- -y
ENV PATH="/root/.nimble/bin:${PATH}"
RUN nim --version

# Perl
RUN apt-get install -y --no-install-recommends perl
RUN perl --version

# PHP
RUN apt-get install -y --no-install-recommends php
RUN php --version

# Install Python 3
RUN apt-get install -y --no-install-recommends python3
RUN python3 --version

# Install R
RUN apt-get install -y --no-install-recommends r-base
RUN R --version

# Ruby
RUN apt-get install -y --no-install-recommends ruby
RUN ruby --version

# Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
ENV RUSTUP_HOME="/root/.rustup"
RUN rustc --version
RUN cargo --version
RUN rustup --version

# Scala
RUN apt-get install -y --no-install-recommends scala
RUN scala -version

# Swift
RUN curl -sL https://download.swift.org/swift-6.0.2-release/ubuntu2404/swift-6.0.2-RELEASE/swift-6.0.2-RELEASE-ubuntu24.04.tar.gz -o swift.tar.gz
RUN tar zxvf swift.tar.gz
RUN mv swift-6.0.2-RELEASE-ubuntu24.04 /usr/local/swift
ENV PATH="/usr/local/swift/usr/bin:${PATH}"
RUN swift --version

# Zig
RUN curl -sSf https://ziglang.org/download/0.12.0/zig-linux-x86_64-0.12.0.tar.xz -o zig.tar.xz
RUN tar xf zig.tar.xz
RUN mv zig-linux-x86_64-0.12.0 /usr/local/zig
ENV PATH="/usr/local/zig:${PATH}"
RUN zig version