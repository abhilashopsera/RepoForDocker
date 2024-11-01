FROM alpine
RUN apk add --no-cache curl
WORKDIR /app
COPY ..
RUN echo "Building the Docker image on $01-nov-2024"
EXPOSE 8081
CMD ["sh"]
