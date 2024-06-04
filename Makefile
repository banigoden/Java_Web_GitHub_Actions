.PHONY: init clean create-env

init:
	poetry install --no-root
	poetry shell
	pre-commit install

create-env:
	@echo "Creating virtual environment ..."
	python3 -m venv venv
	@echo "Activating virtual environment ..."
	. venv/bin/activate
	@echo "Installing dependencies ..."
	pip install -r requirements.txt

clean:
	@echo "Cleaning up ..."
	rm -rf ./deployment/terraform/.terraform
	rm -rf ./deployment/terraform/*.hcl
	rm -rf ./deployment/terraform/*.tfstate
	rm -rf venv
	rm -rf __pycache__
	rm -rf .pytest_cache
	rm -rf .mypy_cache
	rm -rf .tox
	rm -rf .coverage
