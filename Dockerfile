# Use the official Nginx image as a base
FROM nginx:latest

# Copy the custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
