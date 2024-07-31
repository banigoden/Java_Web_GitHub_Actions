# Python FastAPI - Demo Web Application

## Description

This repository facilitates the deployment of a web application into
preferred Linux VMs. Typical uses would be deployment to Kubernetes,
demos of Docker, CI/CD (build pipelines are provided), deployment to
cloud (AWS) monitoring, auto-scaling

## Requirements

- AWS account
- Terraform >= 1.0.4
- Ansible core >= 2.0
- Poetry
- AWS CLI tool
- pylinter
- Docker on host OS

## How to

- **Install GitHub Runner Agent**
- **Manual Installation:**
- Follow the manual instructions provided by GitHub.
- **Ansible Installation:**
- Execute the following command:

    ```bash
    ansible-playbook playbook.yml --private-key EC2-web_app.pem -i /
    inventory/ansible-inventory --user ec2-user
    ```

## Terraform Variables

- **Region:**
- eu: eu-central-1

- **Image:**
- REDHAt: ami-007c3072df8eb6584
- Debian 12-x86: ami-042e6fdb154c830c5

## Makefile

A standard GNU Make file is provided to help with running and building locally.

lint                 🔎 Lint & format, will not fix but sets exit code on error
lint-fix             📜 Lint & format, will try to fix errors and modify code
image                🔨 Build container image from Dockerfile
push                 📤 Push container image to registry
run                  🏃 Run the server locally using Python
deploy               🚀 Deploy to AWS Web App
destroy             💀 Remove from AWS
test                 🎯 Unit tests for Flask app
test-report          🎯 Unit tests for Flask app (with report output)
test-api             🚦 Run integration API tests, server must be running
clean                🧹 Clean up project

## GitHub Actions CI/CD

A working set of CI and CD release GitHub Actions workflows are provided
.github/workflows/, automated builds are run in GitHub hosted runners

## GitHub Actions Secrets

- `GITHUB_REPO_TOKEN`: GitHub repository token required for GitHub Runner.

## License

This project is licensed under the GNU GPL v3.
