# Use the official lightweight Nginx image
FROM docker.io/library/nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Add a simple Hello World page
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
