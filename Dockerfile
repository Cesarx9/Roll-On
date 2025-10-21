# Dockerfile for Roll-On
FROM python:3.11-slim

# Install system dependencies
RUN apt-get update &&     apt-get install -y ffmpeg &&     rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install Python dependencies
RUN pip install --upgrade pip &&     pip install -r requirements.txt

# Set environment variable for download directory
ENV ROLLON_DOWNLOAD_DIR=Media/Music

# Create download directory
RUN mkdir -p $ROLLON_DOWNLOAD_DIR

# Entry point for the CLI
ENTRYPOINT ["rollon"]
