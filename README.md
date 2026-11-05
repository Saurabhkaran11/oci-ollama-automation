# OCI Automated Open-Source AI Infrastructure

A cloud-native DevOps project establishing a self-healing, containerized architecture on Oracle Cloud Infrastructure (OCI) to serve open-source Large Language Models (LLMs).

## 🚀 Architecture Overview
* **Cloud Provider:** Oracle Cloud Infrastructure (OCI) Always Free Tier (Ubuntu Server)
* **Containerization:** Docker container hosting an all-in-one unified Ollama engine
* **Deployed Models:** 
  * `Llama 3.1 (8B)` - General Reasoning & Chat
  * `Qwen 2.5 Coder (7B)` - Code Generation Specialist
  * `Llama 3 (Latest)` - Comparative Text Analysis
* **Local Automation:** Custom Windows Batch/PowerShell scripting engine utilizing secure SSH Tunneling and pseudo-terminal (`-t`) allocations.

## 🛠️ Key Engineering Features
* **Self-Healing Infrastructure:** Configured Docker orchestration runtime policies (`--restart always`) allowing the AI instance to automatically recover and spin models back up independently following host OCI reboots or Out-of-Memory (OOM) faults.
* **Network & Security Bypass:** Implemented secure network routing workarounds via OCI Virtual Cloud Network (VCN) Ingress Rule management and VPN tunnels to safely interface local environments with cloud resources.
* **Developer Control Panel:** Designed a standalone local command-line interface helper to bypass verbose configurations, stream live microservice logging analytics, and execute direct container model interaction using a single keystroke.
