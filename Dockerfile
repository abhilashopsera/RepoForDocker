# Use the base image
FROM python:3.11.7-slim-bullseye
# Set build arguments
# Print the application version
RUN echo "Building application version: $APP_VERSION"
# Install any dependencies (example for Python)
WORKDIR /app
COPY requirements.txt .
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Copy the rest of your application code from the repository root
COPY . .
# Command to run the application (adjust as necessary)
CMD ["python", "app.py"]  # Adjust if your main file is not app.py
