#! /bin/bash


# python
pip install yapf

# js, json
pip install jsbeautifier

# C/C++, Objective
# clang-format

sysOS=`uname -s`

if [ $sysOS == "Darwin" ];then
    brew install clang-format
elif [ $sysOS == "Linux" ];then
    yum install -y clang-format
else
    echo "Other OS: $sysOS"
fi
