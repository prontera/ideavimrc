#!/bin/bash
# usage: 将ideavim配置硬链接到用户下的.ideavimrc，如果.ideavimrc文件已经存在，则自动重命名该文件。
# author: prontera@github

#set -x
set -eo pipefail
shopt -s nullglob

# 无参函数
# 检测.ideavimrc文件是否存在，如果存在则重命名该文件
rename_if_file_exists(){
    local random="$RANDOM"
    if [[ -e "$HOME/.ideavimrc"  ]]; then
        echo "$(tput setaf 1)>>> "file \".ideavimrc\" has already exists which had been renamed to .ideavimrc-$random"  $(tput sgr0)"
        mv "$HOME/.ideavimrc" "$HOME/.ideavimrc-$random"
    fi
}

rename_if_file_exists
ln idea/idea.vimrc "$HOME/.ideavimrc"
echo "$(tput setaf 2)>>> "Done!"  $(tput sgr0)"
exit 0
