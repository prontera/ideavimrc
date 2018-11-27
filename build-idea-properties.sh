#!/bin/bash
# 该脚本的作用是自定义idea的配置文件和插件的位置
# author: prontera@github

#set -x
set -eo pipefail
shopt -s nullglob

idea_pros_path=$HOME/idea.properties
touch "${idea_pros_path}"

if [[ -e $HOME/.zshrc ]]; then
    if ! grep -q IDEA_PROPERTIES "$HOME/.zshrc"; then
        echo "$(tput setaf 2)>>> "write it down to .zshrc"  $(tput sgr0)"
        echo "export IDEA_PROPERTIES=${idea_pros_path}" >> $HOME/.zshrc
        touch ${idea_pros_path}
        echo 'idea.config.path=${user.home}/Public/Nutstore/config/mac/IntelliJIdea2016.3/config' > ${idea_pros_path}
        #echo 'idea.plugins.path=${user.home}/Public/Nutstore/config/mac/IntelliJIdea2016.3/plugins' >> ${idea_pros_path}
    fi
fi
if [[ -e $HOME/.bashrc ]];then
    if ! grep -q IDEA_PROPERTIES "$HOME/.bashrc"; then
        echo "$(tput setaf 2)>>> "write it down to .bashrc"  $(tput sgr0)"
        echo "export IDEA_PROPERTIES=${idea_pros_path}" >> $HOME/.bashrc
        touch ${idea_pros_path}
        echo 'idea.config.path=${user.home}/Public/Nutstore/config/mac/IntelliJIdea2016.3/config' > ${idea_pros_path}
        #echo 'idea.plugins.path=${user.home}/Public/Nutstore/config/mac/IntelliJIdea2016.3/plugins' >> ${idea_pros_path}
    fi
fi

echo "$(tput setaf 2)>>> "Done!"  $(tput sgr0)"
exit 0
