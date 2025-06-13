# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port for Railway to detect
EXPOSE 8080

# Start the app — use $PORT from Railway
CMD ["python", "app.py"]
