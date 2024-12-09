# Declare arguments for build-time variables
ARG BASE_IMAGE=python:3.11.7-slim-bullseye
ARG APP_VERSION
# Use the base image
FROM ${BASE_IMAGE}
# Set environment variables
ENV APP_VERSION=${APP_VERSION}
# Example of using APP_VERSION in a RUN command
RUN echo "Building application version: ${APP_VERSION}"
# Add further steps for your application build as needed
