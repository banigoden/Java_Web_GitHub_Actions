.PHONY: init clean

init:
	poetry install --no-root
	poetry shell
	pre-commit install

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
