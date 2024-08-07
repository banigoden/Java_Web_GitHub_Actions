REGION ?= eu-central-1
VM_SIZE ?= t2.micro
ENVIRONMENT ?= dev

.PHONY: init destroy plan validate apply play clean

init:
	terraform init

plan:
	terraform plan -destroy -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars

validate:
	terraform validate

workspace:
	terraform workspace select '$(ENVIRONMENT)' || terraform workspace new '$(ENVIRONMENT)'

apply:
	terraform workspace select '$(ENVIRONMENT)' && terraform apply -auto-approve -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars

destroy:
	terraform workspace select '$(ENVIRONMENT)' && terraform destroy -auto-approve -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars

clean:
	rm -rf ./deployment/terraform/ \
	; rm -rf ./deployment/terraform.lock.hcl terraform*.tfstate terraform*.out terraform*.plan terraform*.log
