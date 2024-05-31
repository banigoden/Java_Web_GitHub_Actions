.PHONY: init
init:
	terraform init

plan:
	terraform plan

apply:
	terraform apply -auto-approve

.PHONY: play
init:
	terraform apply -var-file=environments/$(REGION)-$(ENVIRONMENT).tfvars
