#!/bin/bash
# 该脚本的作用是自定义idea的配置文件和插件的位置
# author: prontera@github

#set -x
set -eo pipefail
shopt -s nullglob

# homebrew
cd "$(brew --repo)"
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git
# homebrew bottles
# bash
if [[ -e "$HOME/.bash_profile" ]]; then
  echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.bashrc
  echo "$(tput setaf 2)>>> "append to .bash_profile!"  $(tput sgr0)"
fi
# zsh
if [[ -e "$HOME/.zshrc" ]]; then
  echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.zshrc
  echo "$(tput setaf 2)>>> "append to .zshrc!"  $(tput sgr0)"
fi
# homebrew core
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git

echo "$(tput setaf 2)>>> "Done!"  $(tput sgr0)"
exit 0
