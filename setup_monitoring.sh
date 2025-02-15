#!/bin/bash

# Install Node Exporter
./node-exporter/install.sh

# Install Prometheus
./scripts/install_prometheus.sh

# Install Grafana
./scripts/install_grafana.sh

echo "Monitoring setup complete!"
