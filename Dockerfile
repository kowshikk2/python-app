# Use the official Python base image for ARM64
FROM arm64v8/python:3.9-slim

# Install build tools and any necessary dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install any Python dependencies your code may have
# For GPIO, you might need a library like RPi.GPIO
RUN pip3 install RPi.GPIO

# Create a directory for your application
WORKDIR /app

# Copy your Python script into the container
COPY app.py .

# Run the Python script
CMD ["python3", "app.py"]
