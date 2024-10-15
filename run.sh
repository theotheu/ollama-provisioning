#!/usr/bin/env bash

DEBIAN_FRONTEND=noninteractive  

sudo apt-get update && sudo apt-get install make build-essential libssl-dev \
    zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

curl https://pyenv.run | bash

# Load pyenv automatically by appending
# the following to 
# ~/.bash_profile if it exists, otherwise ~/.profile (for login shells)
# and ~/.bashrc (for interactive shells) :
 
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

eval "$(pyenv virtualenv-init -)"

source ~/.bashrc

pyenv install-latest

exit

sudo apt-get -y install software-properties-common aptitude git python-simplejson
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible

cd ~
mkdir -p code
cd code
git clone https://github.com/theotheu/ollama-provisioning.git
# just to make sure that latest commits are used
cd ollama-provisioning
git fetch --all && git reset --hard && git pull origin master
cd ansible

# Issue with setting locales
# @see issue https://github.com/ansible/ansible/issues/10698 
# Best workaround is to not accept variables from the client 
sudo sed -i 's/AcceptEnv/# AcceptEnv/' /etc/ssh/sshd_config
sudo service ssh restart

# @see https://stackoverflow.com/questions/43791040/suppress-ansible-ad-hoc-warning
ANSIBLE_PYTHON_INTERPRETER=auto_silent

ansible-playbook local.yml  --connection=local -vvvv
exit 0
