# flake templates

This is my collection of project templates.

## pycli

It's a python package called "hello" with a console script called "hello" that says "hello world!" when you run it.

Try these
```
mkdir hello
cd hello
nix flake init --template github:MatrixManAtYrService/flake-templates#pycli
direnv allow
python -c 'from hello.cli import message; print(message())'
nix run
uv run hello
pytest
./steps.sh
```
