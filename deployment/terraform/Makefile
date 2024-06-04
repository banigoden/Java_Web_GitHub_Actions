REGION ?= eu-central-1
VM_SIZE ?= t2.micro
ENVIRONMENT ?= dev

.PHONY: init destroy plan validate apply play clean

plan:
	terraform plan -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars -var "vm_size=$(VM_SIZE)"

validate:
	terraform validate

apply:
	terraform apply -auto-approve -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars -var "vm_size=$(VM_SIZE)"

init:
	terraform apply -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars -var "vm_size=$(VM_SIZE)"

destroy:
	terraform destroy -auto-approve -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars -var "vm_size=$(VM_SIZE)"

clean:
	rm -rf ./deployment/terraform/.terraform
	rm -rf ./deployment/terraform/*.hcl
	rm -rf ./deployment/terraform/*.tfstate
