# Deploy GitHub Runner/Admin with Terraform and Ansible

## Description

This repository facilitates the deployment of a GitHub Runner/Admin instance onto
preferred Linux VMs.It sets up a Poetry environment for managing dependencies
related to Terraform and Ansible. Additionally, it incorporates pre-commit
hooks defined in `.pre-commit-config.yaml` and installs `cz`for committing changes
with conventional commit messages. The deployment process involves deploying
a VMusing Terraform and installing the GitHub Runner using Ansible.
This typically includes creating a user and home directory, installing the GitHub
Runner agent either manually or through Ansible, and creatinga systemd unit using
a Jinja2 template.

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
    ansible-playbook playbook.yml --tags install_github_runner
    ```

## Terraform Variables

- **Region:**
- eu: eu-central-1

- **Image:**
- Amazon Linux 2024-x64: ami-0f7204385566b32d0
- Debian 12-x86: ami-042e6fdb154c830c5

## GitHub Actions Secrets

- `GITHUB_REPO_TOKEN`: GitHub repository token required for GitHub Runner.

## License

This project is licensed under the GNU GPL v3.

task

1) workflow - pre-commit - every commit runn all files check linters, only when pre commit, for all branch, except main. docker. hide secrets . main workflow run mannualy.
2) Check grape binary. configure - exit code when high risk
3) deploy vm
4) ansible - main workflow docker image собрать локально, stage build, push git hub. token для контейнера/ need counter in git for ansible version. docker compose login github
