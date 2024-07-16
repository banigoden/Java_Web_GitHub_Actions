REGION ?= eu-central-1
VM_SIZE ?= t2.micro
ENVIRONMENT ?= dev

.PHONY: init destroy plan validate apply play clean

init:
	terraform init

plan:
	terraform plan -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars

validate:
	terraform validate

apply:
	terraform apply -auto-approve -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars

destroy:
	terraform destroy -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars

clean:
	rm -rf ./deployment/terraform/.terraform
	rm -rf ./deployment/terraform/*.hcl
	rm -rf ./deployment/terraform/*.tfstate
