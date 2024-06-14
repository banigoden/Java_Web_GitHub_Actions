.PHONY: play init dry clean

check_ansible:
	@command -v ansible-playbook >/dev/null 2>&1 || { echo >&2 "Ansible is not installed. Aborting."; exit 1; }

play:
	@echo "Running Ansible playbook..."
	ansible-playbook -i ./inventory/ansible-inventory playbook.yml --private-key EC2-web_app.pem --user ec2-user

init:
	@echo "Initializing Ansible environment..." for modules /ansible, collections
	ansible-galaxy install -r ./collections/requirements.yml

dry:
	@echo "Performing dry-run of Ansible playbook..."
	ansible-playbook -i ./inventory/ansible-inventory playbook.yml --private-key EC2-web_app.pem --user ec2-user --check

clean:
	@echo "Cleaning up..."
	rm -rf *.retry
