# Use the official lightweight Python image
FROM python:3.9-slim

# Set working directory in container
WORKDIR /app

# Copy project files into the container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port (this doesn't control it, just informs Docker)
EXPOSE 5000

# Run the app, Railway will inject PORT env variable
CMD ["python", "app.py"]
