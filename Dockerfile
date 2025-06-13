# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Railway's expected port
EXPOSE 5000

# Start the app using the dynamic Railway port
CMD ["python", "app.py"]
