# Use the official .NET SDK image to build the app
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build-env
WORKDIR /app

# Copy csproj and restore dependencies
COPY *.csproj ./
RUN dotnet restore

# Copy remaining files and build
COPY . ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/runtime:9.0
WORKDIR /app
COPY --from=build-env /app/out .

# Install strace for debugging
RUN apt-get update && apt-get install -y strace