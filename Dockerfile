# Use official TensorFlow image with Python 3.10
FROM tensorflow/tensorflow:2.12.0

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Install system & Python dependencies
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    && pip install --upgrade pip \
    && pip install -r requirements.txt

# Expose the port Flask runs on
EXPOSE 5000

# Start your Flask app
CMD ["python", "app.py"]
