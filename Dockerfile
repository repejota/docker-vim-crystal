# Starting from debian latest as Docker recommends
# https://docs.docker.com/engine/articles/dockerfile_best-practices/#from
FROM debian:latest

MAINTAINER Raül Pérez <repejota@gmail.com>

ENV USER root
ENV HOME /root

# Update the system & install dependencies
RUN apt-get update
RUN apt-get install -y --no-install-recommends build-essential \
    ca-certificates \
    curl \
    git \
    libssl-dev \
    tmux \
    vim-nox \
    make

# Installing Crystal
ENV RUST_VERSION=1.5.0
WORKDIR /tmp
RUN curl http://dist.crystal-lang.org/apt/setup.sh | sudo bash

# Setup the environment
WORKDIR /root
ADD bashrc /root/.bashrc
ADD vimrc /root/.vimrc
ADD tmux.conf /root/.tmux.conf

RUN git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell       && \
    git clone https://github.com/magicmonty/bash-git-prompt.git ~/.config/bash-git-prompt   && \
    mkdir -p ~/.vim/bundle                                                                  && \
    cd  ~/.vim/bundle                                                                       && \
    # Get vim plugins
    git clone https://github.com/gmarik/Vundle.vim.git                                      && \
    git clone https://github.com/chriskempson/base16-vim.git                                && \
    git clone https://github.com/bling/vim-airline.git                                      && \
    git clone https://github.com/cespare/vim-toml.git                                       && \
    git clone https://github.com/scrooloose/nerdtree.git                                    && \
    git clone https://github.com/majutsushi/tagbar.git                                      && \
    git clone https://github.com/ctrlpvim/ctrlp.vim.git                                     && \
    # Install vim plugins
    vim +PluginInstall +qall                                                                && \
    git config --global core.editor vim

# Add volume to the source code
VOLUME ["/docker"]
WORKDIR /source

CMD ["bash", "-l"]
