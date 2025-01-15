#!/bin/bash

# Array of services
services=(
  "jbcs-httpd24-httpd.service"
  "jboss-dscsa.service"
  "jboss-at-batch.service"
  "jboss-at-dps.service"
  "jboss-services.service"
  "jboss-tools.service"
)

# Function to check service status
check_status() {
  echo "Checking service status..."
  for service in "${services[@]}"; do
    echo "Status of $service:"
    systemctl status "$service" --no-pager
  done
}

# Function to start services
start_services() {
  echo "Starting services..."
  for service in "${services[@]}"; do
    echo "Starting $service..."
    systemctl start "$service"
    if systemctl is-active --quiet "$service"; then
      echo "$service started successfully."
    else
      echo "Failed to start $service. Check logs for details."
    fi
  done
}

# Main script execution
check_status
start_services
