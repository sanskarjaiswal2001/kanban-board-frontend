# Use the official Nginx image
FROM nginx:alpine

# Copy the Nginx configuration file
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Copy the SSL certificate and key
COPY ./src/certificates/cert.pem /etc/nginx/certs/cert.pem
COPY ./src/certificates/key.pem /etc/nginx/certs/key.pem

# Copy the built frontend files
COPY ./dist /usr/share/nginx/html

# Expose port 443 for HTTPS
EXPOSE 443