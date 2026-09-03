# Multi-Cloud Linux Infrastructure Automation Framework

An enterprise-ready, declarative Infrastructure-as-Code (IaC) framework for provisioning and managing Linux infrastructure across AWS, Azure, and GCP using Terraform, Ansible, and Salt.

## Overview

This project provides reusable, production-grade modules to standardize infrastructure provisioning and OS-level configuration tuning across multi-cloud environments, reducing manual setup time and enforcing consistent performance/security baselines.

## System Architecture

- Infrastructure Layer (Terraform): Modular, isolated Terraform configurations with secure network boundaries for compute provisioning.
- Configuration Management (Ansible): Playbooks that eliminate performance bottlenecks by systematically tuning virtual memory and kernel-level settings.
- Salt (planned/in progress): State management for ongoing configuration enforcement.

## Performance Tuning Targets

| Parameter | Value | Purpose |
|---|---|---|
| vm.swappiness | 10 | Minimizes unnecessary disk swapping |
| net.core.somaxconn | 4096 | Increases TCP listen socket backlog |
| fs.file-max | 2097152 | Expands system-wide open file limit |

## Project Structure

.github/workflows/  - CI/CD automation
terraform/modules/aws_compute/  - Reusable AWS compute module
README.md

## Getting Started

git clone https://github.com/venureddyappln-cloud/linux-infrastructure-automation.git
cd linux-infrastructure-automation/terraform/modules/aws_compute
terraform init
terraform validate
terraform plan

## Why This Project

Built to demonstrate production-style infrastructure automation practices, modular Terraform design, secure defaults, and OS-level performance tuning, applicable to real-world multi-cloud production support and SRE workflows.
