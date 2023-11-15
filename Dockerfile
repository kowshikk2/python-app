# Use the official Raspberry Pi OS image as the base image
FROM arm64v8/debian:bookworm-slim

# Install required packages
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
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
