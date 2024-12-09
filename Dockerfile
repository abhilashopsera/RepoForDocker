# Use a base image that matches your app's needs
ARG BASE_IMAGE=python:3.11.7-slim-bullseye
FROM ${BASE_IMAGE}
# Set the environment variable for the application version
ARG APP_VERSION
ENV APP_VERSION=${APP_VERSION}
# Display the app version (for debugging purposes)
RUN echo "Building application version: ${APP_VERSION}"
# Set the working directory inside the container
WORKDIR /app
# Copy the requirements.txt from the 'app' subdirectory to the container's working directory
COPY app/requirements.txt .
# Install dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
# Copy the rest of your application code from the 'app' subdirectory
COPY app/ .
# Command to run the application (adjust as necessary)
CMD ["python", "app.py"]
