#!/bin/bash

# Add Grafana repository
sudo apt-get install -y apt-transport-https software-properties-common wget
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

# Install Grafana
sudo apt update
sudo apt install grafana

# Start and enable Grafana
sudo systemctl start grafana-server
sudo systemctl enable grafana-server

# Verify Grafana is running
sudo systemctl status grafana-server
