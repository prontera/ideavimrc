#!/bin/bash
# usage: 将spacevim配置硬链接到用户下的.SpaceVim.d，如果spacevim文件已经存在，则自动重命名该文件。
# author: prontera@github

#set -x
set -eo pipefail
shopt -s nullglob

spacevim_d=$HOME/.SpaceVim.d

# 无参函数
# 将自定义配置自动追加~/.SpaceVim.d下的同名目录
append_config(){
    mkdir -p "${spacevim_d}"
    mkdir -p "${spacevim_d}/autoload"
    cat spacevim/init.toml >> "${spacevim_d}/init.toml"
    cat spacevim/autoload/chris.vim >> "${spacevim_d}/autoload/chris.vim"
}

append_config
echo "$(tput setaf 2)>>> "Done!"  $(tput sgr0)"
exit 0
