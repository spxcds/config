#!/bin/bash

source ./common.sh

# set user
if [ "$1" ]; then
    USER=$1
    HOME=/home/$USER
fi

Info "Configure supervisor"
yum install -y supervisor
echo_supervisord_conf > /etc/supervisord.conf
supervisord -c /etc/supervisord.conf

yum install -y zlib zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel \
    openssl-devel xz xz-devel libffi-devel findutils

Info "Configure pip"
mkdir -p ~/.pip
echo '[global]' > ~/.pip/pip.conf
echo 'index-url = https://pypi.tuna.tsinghua.edu.cn/simple' >> ~/.pip/pip.conf
echo '[install]' >> ~/.pip/pip.conf
echo 'trusted-host=mirrors.aliyun.com' >> ~/.pip/pip.conf

Info "Configure pyenv"
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
echo 'export PATH=~/.pyenv/bin:$PATH' >> ~/.bashrc
echo 'export PYENV_ROOT=~/.pyenv' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
mkdir -p $HOME/.pyenv/cache
export PYTHON_BUILD_CACHE_PATH=$HOME/.pyenv/cache
cp ./lib/Python-2.7.5.tar.gz $HOME/.pyenv/cache

chown $USER:$UESR -R ~/.pyenv
source ~/.bashrc
pyenv local 2.7.5

which pip
which python

pip install networkx==2.2
pip install tensorflow==1.10.0
pip install torch==1.1.0
pip install torchvision
pip install keras==2.2.0
pip install scikit-learn==0.19.1
pip install scikit-image==0.14.0
pip install numpy==1.14.5
pip install pandas==0.24.2
pip install scipy==1.2.2
pip install matplotlib==2.0.2
pip install celery==4.3.0
pip install tgrocery
pip install xgboost==0.81
pip install redis==3.2.1
pip install xlwt
pip install bravado==10.2.2
pip install bravado-core==5.10.1
pip install docker==3.7.1
pip install docker-pycreds==0.4.0
pip install paramiko==1.16.1
pip install kubernetes==9.0.0
pip install flask
pip install flask_cors
pip install Flask-Cache
pip install click
pip install pymongo==3.6.1
pip install bson==0.5.4
pip install pillow==5.3.0
pip install sqlalchemy==1.1.0
pip install pymysql==0.9.3
pip install requests==2.20.1
pip install mongoengine==0.15.0
pip install nose==1.3.7
pip install xlrd==1.1.0
pip install xlwt
# pip install pydoop==1.2.0
pip install python-memcached==1.59
pip install boto3==1.5.0
pip install xgboost==0.80
pip install keras==2.2.0
pip install simplejson==3.16.0
pip install apscheduler==3.5.3
pip install elasticsearch==6.3.1
pip install elasticsearch_dsl==6.2.1
pip install opencv-python==4.1.0.25
pip install six
pip install termcolor==1.1.0
pip install tabulate==0.8.3
pip install tqdm==4.31.1
pip install msgpack==0.6.1
pip install msgpack-numpy==0.4.4.3
pip install msgpack-python==0.5.6
pip install pyzmq==18.0.1
pip install psutil==5.6.1
pip install subprocess32==3.5.3
pip install functools32
