# Monitoring Stack for LAMP Server 🚀

![GitHub](https://img.shields.io/github/license/your-username/monitoring-stack?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/your-username/monitoring-stack?style=flat-square)
![GitHub repo size](https://img.shields.io/github/repo-size/your-username/monitoring-stack?style=flat-square)

This project sets up a **monitoring stack** using **Prometheus**, **Grafana**, and **Node Exporter** to monitor a **LAMP (Linux, Apache, MySQL, PHP)** server. The stack collects system-level metrics and visualizes them in real-time using Grafana dashboards.

---

## **Features** ✨

- **Prometheus**: Scrapes and stores metrics from the LAMP server and the Prometheus server itself.
- **Node Exporter**: Exposes system-level metrics (CPU, memory, disk, network, etc.) for monitoring.
- **Grafana**: Provides real-time visualization of metrics using customizable dashboards.
- **Easy Setup**: Includes installation scripts for quick deployment.

---

## **Architecture Overview** 🏗️

![Architecture Diagram](https://via.placeholder.com/800x400.png?text=Architecture+Diagram)  
*Replace this placeholder with your actual architecture diagram.*

1. **Prometheus Server**: `<prometheus-server-ip>`
   - Runs Prometheus and Grafana.
   - Scrapes metrics from itself and the LAMP stack server.

2. **LAMP Stack Server**: `<lamp-server-ip>`
   - Runs Node Exporter to expose system metrics.

3. **Grafana**: Visualizes metrics collected by Prometheus.

---

## **Prerequisites** 📋

- Two Ubuntu 20.04 servers:
  - Prometheus Server: `<prometheus-server-ip>`
  - LAMP Stack Server: `<lamp-server-ip>`
- SSH access to both servers.
- Basic knowledge of Linux commands.

---

## **Installation** 🛠️

### **1. Clone the Repository**
```bash
git clone https://github.com/your-username/monitoring-stack.git
cd monitoring-stack
2. Run the Setup Script
The setup script installs and configures Prometheus, Grafana, and Node Exporter on both servers.

bash
Copy
chmod +x scripts/setup_monitoring.sh
./scripts/setup_monitoring.sh
Configuration ⚙️
Prometheus
Configuration file: prometheus/prometheus.yml

Scrapes metrics from:

Prometheus Server: <prometheus-server-ip>:9100

LAMP Stack Server: <lamp-server-ip>:9100

Grafana
Access Grafana at http://<prometheus-server-ip>:3000.

Default credentials:

Username: admin

Password: admin

Node Exporter
Exposes metrics at http://<server-ip>:9100/metrics.

Usage 🚀
Access Prometheus
Open your browser and go to http://<prometheus-server-ip>:9090.

Check the Targets page to ensure both servers are being scraped.

Access Grafana
Open your browser and go to http://<prometheus-server-ip>:3000.

Import the Node Exporter Full dashboard using ID 1860.

Customize the dashboard to visualize metrics from both servers.

Project Structure 📂
Copy
monitoring-stack/
├── README.md                   # Project documentation
├── prometheus/
│   ├── prometheus.yml          # Prometheus configuration file
│   ├── alerts.yml              # Alert rules (optional)
│   └── dashboards/             # Grafana dashboard JSON files (optional)
├── grafana/
│   ├── provisioning/           # Grafana provisioning files (optional)
│   └── dashboards/             # Grafana dashboard JSON files (optional)
├── node-exporter/
│   ├── node_exporter.service   # Node Exporter systemd service file
│   └── install.sh              # Installation script for Node Exporter
├── scripts/
│   ├── install_prometheus.sh   # Installation script for Prometheus
│   ├── install_grafana.sh      # Installation script for Grafana
│   └── setup_monitoring.sh     # Combined setup script
└── LICENSE                     # License file (optional)
Customization 🎨
Add Alerts
Edit prometheus/alerts.yml to define alert rules.

Update prometheus/prometheus.yml to include the alert rules file:

yaml
Copy
rule_files:
  - "alerts.yml"
Add More Dashboards
Export Grafana dashboards as JSON files.

Store them in grafana/dashboards/.

Contributing 🤝
Contributions are welcome! Please follow these steps:

Fork the repository.

Create a new branch (git checkout -b feature/YourFeature).

Commit your changes (git commit -m 'Add some feature').

Push to the branch (git push origin feature/YourFeature).

Open a pull request.

License 📜
This project is licensed under the MIT License. See the LICENSE file for details.

Acknowledgments 🙏
Prometheus

Grafana

Node Exporter

Support ❤️
