# 🛡️ Python SecOps JSON Parser & Docker Hardening

A lightweight, secure CLI tool written in Python for filtering and processing JSON vulnerability reports. The project was created with a focus on **Secure by Default** principles, clean code (PEP 585), and containerization.

--

## 🚀 Key Features
- **Flexible CLI:** Handling input and output parameters using the `argparse` module.
- **Secure Containerization (Docker Hardening):**
- Use of a minimalist `Alpine Linux` base image (reducing the attack surface).
- Running the application as a non-privileged user (`non-root` user `secopsuser`).
- **Transparent Reporting:** Automatically generates a file with filtered vulnerabilities requiring immediate fixing.

---

## ⚙️ Requirements
- Python 3.11+
- Docker (optional, to run in a container)

---

## 🛠️ Quick Start (Docker)

1. **Build the hardened image:**
```bash
docker build -t secops-parser:latest .