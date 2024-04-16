# NVIM setup

## Pre-requisites 

### Python

- [pylsp](https://github.com/python-lsp/python-lsp-server)
  (Should be autoinstalled with mason build)

  ```bash
  pip install "python-lsp-server[all]"
  ```

- [pyright](https://github.com/microsoft/pyright)
  (Should be autoinstalled with mason build)

  ```bash
  pip install pyright
  ```

- [python-lsp-black](https://github.com/python-lsp/python-lsp-black)
  ```vim
  :PylspInstall python-lsp-black
  ```

### Rust

- [rust-analyzer](https://github.com/rust-lang/rust-analyzer)
  (Should be autoinstalled with mason build)

  ```bash
  rustup component add rust-analyzer
  ```

## Setup

Edit max line length at:
1. ./lua/yashasvi/set.lua
2. ./lua/yashasvi/plugins/lsp.lua
