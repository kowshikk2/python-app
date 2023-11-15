# Use the official Raspberry Pi OS image as the base image
FROM arm64v8/debian:bookworm-slim

# Install any Python dependencies your code may have
# For GPIO, you might need a library like RPi.GPIO
RUN pip3 install RPi.GPIO

# Create a directory for your application
WORKDIR /app

# Copy your Python script into the container
COPY app.py .

# Run the Python script
CMD ["python3", "app.py"]
