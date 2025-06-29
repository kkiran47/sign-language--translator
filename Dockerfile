# Use official TensorFlow base image
FROM tensorflow/tensorflow:2.12.0

# Set working directory
WORKDIR /app

# Copy app code
COPY . .

# Install dependencies
RUN apt-get update && apt-get install -y python3-pip
RUN pip install --upgrade pip
RUN pip install flask opencv-python-headless numpy pillow mediapipe

# Expose the port Flask runs on
EXPOSE 5000

# Start the app
CMD ["python3", "app.py"]
