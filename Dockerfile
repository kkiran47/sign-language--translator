# Use official TensorFlow image with Python and GPU support (no GPU required)
FROM tensorflow/tensorflow:2.12.0

# Set working directory
WORKDIR /app

# Install required system packages
RUN apt-get update && \
    apt-get install -y libgl1-mesa-glx && \
    pip install --no-cache-dir flask opencv-python-headless pillow mediapipe

# Copy app code into container
COPY . .

# Expose port
EXPOSE 10000

# Start Flask app
CMD ["python", "app.py"]
