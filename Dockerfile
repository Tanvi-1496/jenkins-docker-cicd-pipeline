
# Use the official lightweight Nginx web server
FROM nginx:alpine

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy our web application into Nginx's web directory
COPY index.html /usr/share/nginx/html/index.html

# Document the port used by Nginx
EXPOSE 80
