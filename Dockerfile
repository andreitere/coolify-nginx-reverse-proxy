# Use the official Nginx image as a base
FROM nginx:latest

# Copy the custom Nginx configuration file to the container
COPY nginx-template.conf /etc/nginx/conf.d/nginx-template.conf

EXPOSE 80

CMD ["/bin/sh", "-c", "envsubst < /etc/nginx/conf.d/nginx-template.conf > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]

