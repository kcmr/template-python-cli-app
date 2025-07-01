"""Basic tests for CLI."""

from typer.testing import CliRunner

from my_cli_app.cli import app

runner = CliRunner()

def test_hello_default() -> None:
    result = runner.invoke(app, [])
    assert result.exit_code == 0
    assert "Hello, world!" in result.output
