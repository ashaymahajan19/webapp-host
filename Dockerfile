# Use a build argument to choose the base image
ARG BASE_IMAGE=almalinux:8

FROM ${BASE_IMAGE}

# Install necessary packages
RUN dnf install -y httpd python3

# Copy your application files (example)
COPY . /var/www/html

# Expose the port your web application uses
EXPOSE 80

# Command to run your application
CMD ["httpd", "-D", "FOREGROUND"]

