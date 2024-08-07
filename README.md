# Automating CI/CD with GitHub Actions and Python FastAPI - Demo Web Application

## Workflow Overview

The workflow orchestrates tasks, including setting up the development
environment, running tests, building Docker images, and deploying the
application locally. Notably, it incorporates Grype, an open-source tool,
for Docker image vulnerability scanning, ensuring a secure and automated
deployment pipeline.
This repository facilitates the deployment of a web application into
preferred Linux VMs. Typical uses would be deployment to Kubernetes,
demos of Docker, CI/CD (build pipelines are provided), deployment to
cloud (AWS) monitoring.
It takes ~5-6 min to deploy Web App Server.

## Requirements

- AWS account
- Terraform >= 1.0.4
- Ansible core >= 2.0
- Poetry
- AWS CLI tool
- pylinter
- Docker on host OS

## How to deploy flow

Choose:

- branch
- environment
- region

  ```bash
  ansible-playbook playbook.yml --private-key EC2-web_app.pem -i /
  inventory/ansible-inventory --user ec2-user
  ```

## Using terraform

Clone repo
Add your Digital Ocean token to terraform.tfvars.example, amd rename it to terraform.tfvars
Init terraform providers

## Terraform Variables

- **Region:**
- eu: eu-central-1

- **Image:**
- REDHAt: ami-007c3072df8eb6584
- Debian 12-x86: ami-042e6fdb154c830c5

## Using make

init                 🔎 Init terraform modules
plan                 📜 Plan infrasrtucture
apply                📤 Configured AWS
deploy               🚀 Deploy infrastructure without any confirmations
destroy              💀 Destroy infrastructure. Without any confirmations
test                 🎯 Unit tests for FastAPI app
clean                🧹 Clean up project

## GitHub Actions CI/CD

A working set of CI and CD release GitHub Actions workflows are provided
.github/workflows/, automated builds are run in GitHub hosted runners

## GitHub Actions Secrets

- TOKEN : GitHub repository token required for GitHub Runner.
- AWS_ACCESS_KEY_ID :
- AWS_SECRET_ACCESS_KEY:
- AWS_REGION:
- IMAGE_NAME:
- TF_VAR_IMAGE_VERSION:
- TF_VAR_ENVIRONMENT:
- BRANCH_NAME:

## License

This project is licensed under the GNU GPL v3.
