#!/bin/bash
apt-get -y install software-properties-common 
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible 
apt-get -y install python-pip 
apt-get -y install git-core
pip install boto
printf '[tag_ds_Yes]\nlocalhost\n' > /tmp/hosts
ansible-pull  -vv -i /tmp/hosts -U https://github.com/behrica/provisionDataScience > /tmp/ansible-pull.log
