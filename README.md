# NVIM setup

## Pre-requisites 

- [pylsp](https://github.com/python-lsp/python-lsp-server)
  (Should be autoinstalled with mason build)

  ```bash
  pip install "python-lsp-server[all]"
  ```

- [rust-analyzer](https://github.com/rust-lang/rust-analyzer)
  (Should be autoinstalled with mason build)

  ```bash
  rustup component add rust-analyzer
  ```

- [mypy](https://github.com/python-lsp/pylsp-mypy)
  ```vim
  :PylspInstall pylsp-mypy
  ```

## Setup

Edit max line length at:
1. ./lua/yashasvi/set.lua
2. ./lua/yashasvi/plugins/lsp.lua
