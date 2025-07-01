.PHONY: help lint test format pre-commit install-hooks

help:
	@echo "Available targets:"
	@echo "  lint           - Run Ruff linter"
	@echo "  format         - Auto-fix lint issues with Ruff"
	@echo "  test           - Run pytest test suite"
	@echo "  pre-commit     - Run all pre-commit hooks"
	@echo "  install-hooks  - Install pre-commit hooks"

# Lint the codebase using Ruff
lint:
	poetry run ruff .

# Auto-fix lint issues
format:
	poetry run ruff format .

# Run tests using pytest
test:
	poetry run pytest

# Run pre-commit hooks on all files
pre-commit:
	poetry run pre-commit run --all-files

# Install pre-commit hooks
install-hooks:
	poetry run pre-commit install
