# Use the official Python image from Docker Hub
ARG BASE_IMAGE=python:3.11.7-slim-bullseye
FROM ${BASE_IMAGE}
# Set the working directory inside the container
WORKDIR /app
# Set the build argument for the app version (if not passed, default to "unknown")
ARG APP_VERSION=unknown
# Display the application version during the build
RUN echo "Building application version: $APP_VERSION"
# Install any dependencies (example for Python)
COPY requirements.txt .
RUN pip install -r requirements.txt
# Copy the rest of your application code
COPY . .
# Specify the default command to run when the container starts
CMD ["python", "app.py"]
