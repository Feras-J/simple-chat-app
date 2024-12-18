# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the static files to the default Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 8080
EXPOSE 8081

# Add HEALTHCHECK instruction
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD curl --fail http://localhost:8081 || exit 1

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
