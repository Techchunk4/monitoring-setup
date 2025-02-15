#!/bin/bash

# Download and install Node Exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.6.1/node_exporter-1.6.1.linux-amd64.tar.gz
tar -xvf node_exporter-1.6.1.linux-amd64.tar.gz
sudo mv node_exporter-1.6.1.linux-amd64/node_exporter /usr/local/bin/

# Create systemd service
sudo cp node_exporter.service /etc/systemd/system/node_exporter.service

# Create user for Node Exporter
sudo useradd --no-create-home --shell /bin/false node_exporter

# Start and enable Node Exporter
sudo systemctl daemon-reload
sudo systemctl start node_exporter
sudo systemctl enable node_exporter

# Verify Node Exporter is running
sudo systemctl status node_exporter
