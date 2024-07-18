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

apply:
	terraform apply -auto-approve -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars

destroy:
	terraform destroy -auto-approve -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars

clean:
	rm -rf ./deployment/terraform/ \
	; rm -rf ./deployment/terraform.lock.hcl terraform*.tfstate terraform*.out terraform*.plan terraform*.log
