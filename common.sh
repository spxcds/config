#! /bin/bash

sysOS=`uname -s`

Error() {
    if [ $sysOS == "Darwin" ];then
        echo -e "\033[31;1m [$1] \033[0m"
    elif [ $sysOS == "Linux" ];then
        echo -e "\e[31;1m [$1] \e[0m"
    else
        echo -e "\e[31;1m [$1] \e[0m"
    fi
}

Info() {
    if [ $sysOS == "Darwin" ];then
        echo -e "\033[32;1m [$1] \033[0m"
    elif [ $sysOS == "Linux" ];then
        echo -e "\e[32;1m [$1] \e[0m"
    else
        echo -e "\e[32;1m [$1] \e[0m"
    fi
}

