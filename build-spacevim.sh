#!/bin/bash
# usage: 将spacevim配置硬链接到用户下的.SpaceVim.d，如果spacevim文件已经存在，则自动重命名该文件。
# author: prontera@github

#set -x
set -eo pipefail
shopt -s nullglob

spacevim_d=$HOME/.SpaceVim.d

# 无参函数
# 检测spacevim文件是否存在，如果存在则重命名该文件
rename_if_file_exists(){
    local random="$RANDOM"
    if [[ -e "${spacevim_d}/init.vim"  ]]; then
        echo "$(tput setaf 1)>>> "file \"init.vim\" has already exists which had been renamed to init-$random.vim"  $(tput sgr0)"
        mv "${spacevim_d}/init.vim" "${spacevim_d}/init-$random.vim"
    fi
}

rename_if_file_exists
ln spacevim.vimrc "$HOME/.SpaceVim.d/init.vim"
echo "$(tput setaf 2)>>> "Done!"  $(tput sgr0)"
exit 0
