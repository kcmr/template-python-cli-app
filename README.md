# My CLI App

A Python CLI application built with Poetry, Ruff, and pre-commit.

## Setup

1. Install Poetry if not already installed:
```bash
pip install poetry
```

2. Install dependencies:
```bash
poetry install
```

3. Install pre-commit hooks:
```bash
pre-commit install
```

## Usage

Run the CLI:
```bash
poetry run cli-app
```

## Development

Run tests:
```bash
poetry run pytest
```

Check code style:
```bash
poetry run ruff .
```

Run pre-commit hooks:
```bash
pre-commit run --all-files
```
