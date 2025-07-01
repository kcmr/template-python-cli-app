"""Backward-compatibility shim.

This module simply delegates execution to the real CLI defined
in `my_cli_app.cli` so existing references keep working.
"""

from my_cli_app.cli import main

if __name__ == "__main__":  # pragma: no cover
    main()
