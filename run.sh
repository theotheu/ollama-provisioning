#!/usr/bin/env bash

DEBIAN_FRONTEND=noninteractive  
REPO=ollama-provisioning
PENV=pyenv_ansible
CODE=code

timedatectl set-timezone Europe/Amsterdam

T=22:55

echo "##### --- ${T}"
rm -fr ${CODE}

sudo apt update
sudo apt install git python-is-python3 python3-pip python3.10-venv



cd ~
mkdir -p ${CODE}
cd ${CODE}

echo "##### Creating venv for Ansible `pwd`" 
python -m venv ${PENV}
pip install ansible
source ${PENV}/bin/activate

echo "##### Cloning repo ${REPO} into `pwd`"
git clone https://github.com/theotheu/${REPO}.git
# just to make sure that latest commits are used
cd ${REPO}
git fetch --all && git reset --hard && git pull origin master

echo "##### --- ${T}"
echo "##### vvvvv"
ls -l
echo "##### ^^^^^"
cd ${CODE}/${REPO}/ansible/



ANSIBLE_PYTHON_INTERPRETER=auto_silent

echo "##### Running Ansible provisioning script from `pwd`"
ansible-playbook local.yml  --connection=local -vvvv


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
