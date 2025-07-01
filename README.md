# Python CLI App template

A Python CLI application template built with Typer for CLI framework, Poetry for dependency management, Ruff for code formatting and linting, and pre-commit hooks for automated code quality checks.

## Using this repository as a template

You can create your own project based on this template in three ways:

**Using GitHub CLI (recommended):**
If you have the GitHub CLI installed, this is the simplest method:
```bash
gh repo create my-new-project --template kcmr/template-python-cli-app --public --clone
```

This will create a public repository. Use `--private` instead of `--public` if you prefer a private repository.

**Using the GitHub UI:**
1. Click the `Use this template` button at the top of the repository page on GitHub.
2. Choose the name and visibility for your new repository and click `Create repository from template`.

**Using git:**
Clone this repository (without git history):
```bash
git clone --depth=1 https://github.com/kcmr/template-python-cli-app.git my-new-project
cd my-new-project
rm -rf .git
git init
git add .
git commit -m "feat: initial commit from template"
git remote add origin <your-github-repo-url>
git push -u origin main
```

Replace `<your-github-repo-url>` with your new repository URL.

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

This project includes a Makefile with convenient targets for common development tasks:

```bash
# Format code
make format

# Run tests
make test

# Check code style
make lint

# Run all checks (format, lint, test)
make check
```

You can also run these commands directly with Poetry:

```bash
# Run tests
poetry run pytest

# Check code style
poetry run ruff .

# Run pre-commit hooks
pre-commit run --all-files
```

---

## VSCode: recommended settings

If you use VSCode, you can add these settings to your local `.vscode/settings.json` to improve the Python development experience:

```json
{
  "python.testing.pytestArgs": [
    "tests"
  ],
  "python.testing.unittestEnabled": false,
  "python.testing.pytestEnabled": true,
  "[python]": {
    "editor.formatOnSave": true,
    "editor.defaultFormatter": "charliermarsh.ruff",
    "editor.codeActionsOnSave": {
      "source.organizeImports": "explicit"
    }
  },
  "makefile.configureOnOpen": false
}
```

