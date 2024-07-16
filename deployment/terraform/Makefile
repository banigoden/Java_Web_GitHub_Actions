REGION ?= eu-central-1
VM_SIZE ?= t2.micro
ENVIRONMENT ?= dev

.PHONY: init destroy plan validate apply play clean

init:
	terraform init

plan:
	# terraform plan -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars
	terraform plan -var-file=environments/eu-central-1-dev.tfvars

validate:
	terraform validate

apply:
	terraform apply -auto-approve -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars

destroy:
	# terraform destroy -auto-approve -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars
	terraform destroy -auto-approve -var-file=environments/eu-central-1-dev.tfvars

clean:
	rm -rf ./deployment/terraform/.terraform
	rm -rf ./deployment/terraform/*.hcl
	rm -rf ./deployment/terraform/*.tfstate
