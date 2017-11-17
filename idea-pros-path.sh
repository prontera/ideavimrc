#!/bin/bash
# 该脚本的作用是自定义idea的配置文件和插件的位置
# author: prontera@github

#set -x
set -eo pipefail
shopt -s nullglob

idea_pros_path=$HOME/.idea.properties

if [[ -e $HOME/.zshrc ]]; then
    if ! grep -q IDEA_PROPERTIES "$HOME/.zshrc"; then
        echo -e write it to zshrc
        echo "export IDEA_PROPERTIES=${idea_pros_path}" >> $HOME/.zshrc
    fi
fi
if [[ -e $HOME/.bashrc ]];then
    if ! grep -q IDEA_PROPERTIES "$HOME/.bashrc"; then
        echo -e write it to bashrc
        echo "export IDEA_PROPERTIES=${idea_pros_path}" >> $HOME/.bashrc
    fi
fi

echo "$(tput setaf 2)>>> "Done!"  $(tput sgr0)"
exit 0
