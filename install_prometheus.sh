#!/bin/bash

# Download and install Prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.47.0/prometheus-2.47.0.linux-amd64.tar.gz
tar -xvf prometheus-2.47.0.linux-amd64.tar.gz
sudo mv prometheus-2.47.0.linux-amd64 /opt/prometheus

# Create configuration file
sudo cp prometheus.yml /opt/prometheus/prometheus.yml

# Set ownership and permissions
sudo chown -R prometheus:prometheus /opt/prometheus

# Create systemd service
sudo cp prometheus.service /etc/systemd/system/prometheus.service

# Start and enable Prometheus
sudo systemctl daemon-reload
sudo systemctl start prometheus
sudo systemctl enable prometheus

# Verify Prometheus is running
sudo systemctl status prometheus
