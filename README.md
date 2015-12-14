# docker-vim-crystal

A containerized [Crystal](http://crystal-lang.org) lang developer environment with [Docker](http://docker.com).

![screenshot.png](https://raw.githubusercontent.com/repejota/docker-vim-crystal/master/screenshot.png)

## What is included:

This container bundles Crystal Lang and its related tools.

It also includes a developer environment based on [Vim](http://vim.org), [Tmux](https://tmux.github.io/) & the [GNU Build System](https://en.wikipedia.org/wiki/GNU_build_system).

### Crystal lang

The Crystal lang version currently included is the latest stable version of Cyrstal.

## Developer environment

### Bash

This container is using `bash` as a default shell. It also setups decent default colors and a pretty PROMPT. Both of them are based on the palette [base-16](https://github.com/chriskempson/base16).

* [base16-shell](https://github.com/chriskempson/base16-shell)
* [bash-git-prompt](https://github.com/magicmonty/bash-git-prompt)

### Vim

Vim is included with the following plugins:

* [Vundle](http://github.com)
* [vim-toml](https://github.com/cespare/vim-toml)
* [NerdTree](https://github.com/scrooloose/nerdtree)
* [Tag-Bar](https://github.com/majutsushi/tagbar)
* [CtrlP](https://github.com/kien/ctrlp.vim)
* [base16-vim](https://github.com/chriskempson/base16-vim)

### Tmux

TBD.

## Docker Hub

Find this container at my Docker Hub :
[https://hub.docker.com/r/repejota/vim-crystal/](https://hub.docker.com/r/repejota/vim-crystal/)
